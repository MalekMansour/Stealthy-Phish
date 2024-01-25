# Stealthy Phish on Bash. ASCII Art from https://ascii.co.uk/
url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo -e "\e[34m███████╗████████╗███████╗ █████╗ ██╗  ████████╗██╗  ██╗██╗   ██╗    ██████╗ ██╗  ██╗██╗███████╗██╗  ██╗"
echo -e "\e[34m██╔════╝╚══██╔══╝██╔════╝██╔══██╗██║  ╚══██╔══╝██║  ██║╚██╗ ██╔╝    ██╔══██╗██║  ██║██║██╔════╝██║  ██║"
echo -e "\e[34m███████╗   ██║   █████╗  ███████║██║     ██║   ███████║ ╚████╔╝     ██████╔╝███████║██║███████╗███████║"
echo -e "\e[34m╚════██║   ██║   ██╔══╝  ██╔══██║██║     ██║   ██╔══██║  ╚██╔╝      ██╔═══╝ ██╔══██║██║╚════██║██╔══██║"
echo -e "\e[34m███████║   ██║   ███████╗██║  ██║███████╗██║   ██║  ██║   ██║       ██║     ██║  ██║██║███████║██║  ██║"
echo -e "\e[34m╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝   ╚═╝  ╚═╝   ╚═╝       ╚═╝     ╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝\e[0m"

echo -e "\e[34m                                  ____"
echo -e "\e[34m                               /\|    ~~\\"
echo -e "\e[34m                             /'  |   ,-. \`\\"
echo -e "\e[34m                            |       | X |  |"
echo -e "\e[34m                           _|________\`-'   |X"
echo -e "\e[34m                         /'          ~~~~~~~~~,"
echo -e "\e[34m                       /'             ,_____,/_"
echo -e "\e[34m                    ,/'        ___,'~~         ;"
echo -e "\e[34m~~~~~~~~|~~~~~~~|---          /  X,~~~~~~~~~~~~,"
echo -e "\e[34m        |       |            |  XX'____________'"
echo -e "\e[34m        |       |           /' XXX|            ;"
echo -e "\e[34m        |       |        --x|  XXX,~~~~~~~~~~~~,"
echo -e "\e[34m        |       |          X|     '____________'"
echo -e "\e[34m        |   o   |---~~~~\__XX\             |XX"
echo -e "\e[34m        |       |          XXX\`\\          /XXXX"
echo -e "\e[34m~~~~~~~~'~~~~~~~'               \`\\xXXXXx/' \XXX"
echo -e "\e[34m                                 /XXXXXX\\"
echo -e "\e[34m                               /XXXXXXXXXX\\"
echo -e "\e[34m                             /XXXXXX/^\\XXXXX\\"
echo -e "\e[34m                            ~~~~~~~~   ~~~~~~~\e[0m"
echo -e Stealthy Phish v.1.0.2 - Author : Malek Mansour - URL Masker

echo -e "\e[37;44m Phishing the URL \e[0m \n"
echo -n "Paste Phishing URL here (with http or https): "
read phish
url_checker $phish
sleep 1
echo "Processing and Modifing the Phishing URL"
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e "\e[37;44m Masking the Domain \e[0m \n"
echo 'Domain to mask the Phishing URL (with http or https), ex: https://google.com, https://youtube.com, https://facebook.com :'
echo -en "\e[32m=>\e[0m "
read mask
url_checker $mask
echo -e '\nNow add social engineering vocab. Type words like : (like free-money, free-robux, freevideos)'
echo -e "\e[34mDon't use space just use '-' between social engineering words. Do not use any other special characters.\e[0m"
echo -en "\e[32m=>\e[0m "
read words
if [[ -z "$words" ]]; then
echo -e "\e[31m[!] No words.\e[0m"
echo -e "\nGenerating A Stealthy Phish Link...\n"
final=$mask@$shorter
echo -e "Here is the Stealthy Phish Link:\e[32m ${final} \e[0m\n"
exit
fi
if [[ "$words" =~ " " ]]; then
echo -e "\e[31m[!] Invalid words. Please avoid space.\e[0m"
echo -e "\nGenerating Stealthy Phish Link...\n"
final=$mask@$shorter
echo -e "Here is the Stealthy Phish Link:\e[32m ${final} \e[0m\n"
exit
fi
echo -e "\nGenerating Stealthy Phish Link...\n"
final=$mask-$words@$shorter
echo -e "Here is the Stealthy Phish Link:\e[32m ${final} \e[0m\n"
# Stealthy Phish
