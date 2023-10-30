from bardapi import Bard
from bardapi import BardCookies

cookie_dict = {
    "__Secure-1PSID": "cQhH0h-3q2Uh-QwhSTWrx5CRSkvUvXDNDRhS8RS6sLnxwblwwbunQsB9T0OGH56hG2UT4w.",
    "__Secure-1PSIDTS":"sidts-CjEBNiGH7kMjO7lIZDzIgjCBynu_0-8mRyE-jEP6nXEJpEJoQuo_xd4AF5oB-qaqTRweEAA",
    "__Secure-1PSIDCC": "ACA-OxO_aSFvra1_PUIL_Ib2a-NajrXURdgFnv-Uicaar9j0jh7Hb5bfMcJVQQpYwb4p39EkuSo",
    # Any cookie values you want to pass session object.
}

bard = BardCookies(cookie_dict=cookie_dict)
print(bard.get_answer("what is the best way to make french press coffee")['content'])