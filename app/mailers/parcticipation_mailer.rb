class ParcticipationMailer < ApplicationMailer
  default from: 'mat@yopmail.com'
 
  def participate_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 
    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Tu es inscrit a un evenement !') 
  end

end
