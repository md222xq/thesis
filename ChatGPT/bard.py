from bardapi import Bard

# token = 'sidts-CjEBNiGH7imCNUiWPnvogOeV-bqm0Hz5ED2LdxOmznXLcukqqzYV7fQj3Uwng3TQdhD8EAA.'
# bard = Bard(token=token)
# bard.get_answer("나와 내 동년배들이 좋아하는 뉴진스에 대해서 알려줘")['content']

from bardapi import BardCookies

cookie_dict = {
    "__Secure-1PSID": "cQhH0h-3q2Uh-QwhSTWrx5CRSkvUvXDNDRhS8RS6sLnxwblwwbunQsB9T0OGH56hG2UT4w.",
    "__Secure-1PSIDTS":"sidts-CjEBNiGH7imCNUiWPnvogOeV-bqm0Hz5ED2LdxOmznXLcukqqzYV7fQj3Uwng3TQdhD8EAA",
    "__Secure-1PSIDCC": "ACA-OxN0vXMi9s1D-OXb57eLTJKdmJtR-dyK579PED114EpTf5OJckIMx1LYbbGrhldDNKpraiA",
    # Any cookie values you want to pass session object.
}

bard = BardCookies(cookie_dict=cookie_dict)
print(bard.get_answer("what is the best way to make french press coffee")['content'])