# add pem keys
function ssh-add-pem-keys ()
{
    {
        for key in `ls ~/.ssh/*.pem`;
        do
            ssh-add $key;
        done
    } >&/dev/null
}


ssh-add-pem-keys

