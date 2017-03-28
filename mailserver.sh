import jenkins.model.*

def inst = Jenkins.getInstance()

def desc = inst.getDescriptor("hudson.tasks.Mailer")

desc.setSmtpAuth("[SMTP user]", "[*******]")
desc.setReplyToAddress("[kishore.lnx86@gmail.com]")
desc.setSmtpHost("[10.0.13.23]")
desc.setUseSsl([true])
desc.setSmtpPort("[25]")
desc.setCharset("[UTF8]")

desc.save()
