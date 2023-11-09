const puppeteer = require('puppeteer');
const fs = require('fs').promises;
const path = require('path');


async function processFile(filePath) {
  const browser = await puppeteer.launch({ headless: false });
  const page = await browser.newPage();

  let fileContents = await fs.readFile(filePath, 'ascii');


  // const buffer = await fs.readFile(filePath);
  // const fileContents = buffer;
  console.log("running, " , {filePath});
  // console.log(fileContents);


//   // Go to the page with the textarea
  await page.goto('https://library.dedaub.com/decompile');

  // Wait for the textarea to be available
  await page.waitForSelector('#bytecode-input');
  await page.evaluate((text) => {
    const textarea = document.querySelector('#bytecode-input');
    textarea.value = text;
    const event = new Event('input', { bubbles: true });
    textarea.dispatchEvent(event);
  }, fileContents);

 

  // await page.focus('#bytecode-input');
  // await page.keyboard.type(fileContents);
  await page.focus('#bytecode-input');
  await page.keyboard.type('0');
  await page.waitForTimeout(500); 
  await page.keyboard.press('Backspace');

//   // Click the "Decompile" button
  await page.waitForSelector('#decompile-button'); 
  await page.click('#decompile-button'); 
  
  
  const outputFileName = `dedaub_${path.basename(filePath, '.hex')}.sol`;
  const outputFilePath = path.join('/Users/malek/Documents/smartbugs-curated/decompiled', outputFileName);
  
  page.on('response', async (response) => {
    if (response.url().includes('controller')) {
      const responseBody = await response.text();
      try {
        const jsonResponse = JSON.parse(responseBody);
        if (jsonResponse.source) {
          // Save the source code to a new .sol file
          await fs.writeFile(outputFilePath, jsonResponse.source);
          console.log(`Decompiled source saved to ${outputFileName}`);
        }
      } catch (error) {
        console.error('Failed to parse response as JSON:', error);
      }
    }
  });

  await page.waitForSelector('p.chakra-text.css-1m1emjx', { visible: true, timeout: 45000 });

  await browser.close();
}

// const filePath = '/Users/malek/Documents/smartbugs-curated/deplyed_bytecodes1/access_control_arbitrary_location_write_simple.sol_Wallet.json.hex'; // Replace with your file's path

(async () => {
  const directoryPath = '/Users/malek/Documents/smartbugs-curated/deplyed_bytecodes1'; 
  const files = await fs.readdir(directoryPath);

  const hexFiles = files.filter(file => file.endsWith('.hex'));

  for (const hexFile of hexFiles) {
    const filePath = path.join(directoryPath, hexFile);
    try{
      await processFile(filePath);

    } catch (error){
      console.error('Failed at ', {filePath}, error);

    }
    // break;
  }
})();
