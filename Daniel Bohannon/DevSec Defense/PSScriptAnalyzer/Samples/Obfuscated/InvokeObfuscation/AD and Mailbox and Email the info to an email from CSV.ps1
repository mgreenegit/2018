









${D`AtE} = .("{2}{1}{0}"-f'ate','-D','Get')

${e`RRoRl`Og} = ((("{1}{2}{0}" -f '.txt','C:{','0}Errorlog')) -F[CHAr]92)
${su`c`c`eSsLOG} = ((("{1}{3}{2}{0}{5}{4}"-f 'cc','C:{','}Su','0','.txt','esslog'))-F [chaR]92)
&("{0}{1}{2}" -f'Add-Con','ten','t') ${SUc`Cess`LOg} ("{0}{12}{17}{10}{9}{16}{11}{2}{6}{13}{3}{14}{1}{4}{7}{15}{5}{8}" -f'-','---------','---','-','-','--------','-------','---','-','--','--','----','----','---','-----------','-','-','---')
.("{2}{1}{0}" -f'tent','n','Add-Co') ${Suc`ceSs`lOg} ${da`TE}
.("{2}{0}{1}" -f'e','nt','Add-Cont') ${suCCe`SS`lOG} ("{14}{8}{13}{4}{10}{6}{12}{3}{7}{11}{1}{15}{18}{16}{9}{5}{2}{17}{0}"-f '----','--','-','--------------','-','--','-','----','------','--','---','--','--','------','-','--','--','------','----')
.("{1}{0}{2}"-f'te','Add-Con','nt') ${eR`RoR`LoG} ("{11}{1}{16}{17}{0}{9}{10}{13}{12}{3}{4}{5}{2}{15}{7}{8}{14}{6}"-f '-----','---','--','---','---','----------------','-','-----','--','-','---','-------','--','-------','--','---','-','-')
.("{0}{2}{1}"-f'A','ntent','dd-Co') ${e`RrOR`loG} ${Da`Te}
.("{0}{2}{1}"-f'A','tent','dd-Con') ${e`RR`orLoG} ("{9}{0}{7}{1}{4}{3}{13}{6}{2}{12}{15}{14}{8}{10}{11}{5}"-f'--','--','----','---------','---','--','----','--','---------','-----','--','---','-----','---------','-----','-')


${s}=&("{2}{0}{1}"-f'io','n','New-PSSess') -ConfigurationName ("{3}{0}{4}{1}{2}{5}"-f 'ic','f','t','M','roso','.Exchange') -ConnectionUri ("{4}{3}{2}{1}{0}" -f 'wershell','o/po','tos','n','http://co') -Authentication ("{1}{2}{0}" -f 'ros','K','erbe')

.("{0}{2}{1}{3}"-f'I','-P','mport','SSession') -Session ${s}

.("{3}{2}{0}{1}"-f'odu','le','ort-M','Imp') ("{2}{3}{0}{1}"-f'veDire','ctory','Act','i')


${c`sV} = @() 
${C`sV} = .("{0}{2}{1}"-f'Impor','-Csv','t') -Delimiter "," -Path ((("{1}{0}{3}{2}"-f 's','C:','.csv','UTADuser'))  -rEplAce ([cHAR]115+[cHAR]85+[cHAR]84),[cHAR]92)

${SeA`RC`hBa`se} = .("{1}{0}{2}{3}"-f 'DDo','Get-A','ma','in') | .("{1}{2}{0}"-f 'h','ForE','ac') {  ${_}."Di`stIngUi`ShED`N`A`me" } 
 

ForEach (${u`sER} In ${c`sv}) 
{ 

    
    ${o`U} = ("{4}{5}{9}{7}{2}{3}{1}{0}{8}{6}" -f'U=employee,DC=Conto',',O','Us','ers','OU','=New Users,O','DC=com','=','so,','U')  
    ${pAs`SWo`Rd} = ("{1}{3}{2}{0}" -f '1','Use','in','rlog')
    ${t`It`LE}= ${U`seR}.'New Post title'
    ${La`STName}= (${Us`eR}.'Last name'.("{2}{0}{1}"-f 'n','g','Substri').Invoke(0,1).("{1}{0}"-f 'r','touppe').Invoke() + ${us`Er}.'Last name'.("{0}{1}{2}{3}" -f'Sub','stri','n','g').Invoke(1).("{2}{1}{0}"-f'er','low','to').Invoke())
    ${DET`AilEDN`AmE} = ${US`eR}.'First name' + " " + ${l`ASt`NAME} 
    ${Userf`IRStN`Ame} = ${U`SEr}.'First name'  
    ${S`AM} =  ${U`sER}.'First name' + "." +  ${LaSt`Na`mE}
    ${U`pN}= ${uSE`Rf`Ir`STn`AME} + "." +  ${L`A`StNaMe} + ("{2}{0}{3}{1}"-f'con','om','@','toso.c')
    ${i`d}= ${u`Ser}."I`D"
	${dIs`PL`AynAmE}= "$Detailedname" + "  " + "-" + "  " + "$title"
	${co`mPanY}= ("{2}{0}{1}" -f'o','so','Cont')
    ${d`Is}= ("{2}{0}{1}"-f 'U','ser','EUPOL ')
    ${G`RouP}= ("{2}{0}{1}"-f'r','s','All Use'),("{2}{1}{4}{5}{3}{6}{0}"-f 'sers','llInt','A','al','erna','tion',' U')
    ${HOM`Ed`RIvE}= ((("{8}{0}{3}{7}{1}{2}{4}{6}{5}" -f '0}{0}contoso','1{0}home{','0','-na','}%user','e%','nam','s','{'))-f [cHar]92)
    

  
  ${NaM`eiD} = ${u`SEr}."I`D"
${U`sER} = .("{1}{0}{2}{3}"-f 't','Ge','-AD','User') -LDAPFilter "(EmployeeID=$NameID)"
If (${u`SER} -eq ${Nu`LL}) 

    { 
      
      
      
      ${CRe`AtE} = .("{2}{3}{1}{0}"-f'r','Use','New-','AD') -Name ${dETAil`E`D`NAMe} -SamAccountName ${s`AM} -UserPrincipalName ${U`PN}  -DisplayName ${DiSPL`Ayna`mE} -GivenName ${USer`FiR`STNaME} -Surname ${lasTn`A`me} -AccountPassword (.("{1}{5}{0}{2}{4}{3}"-f 'ert','C','To-Sec','ng','ureStri','onv') ${pa`sS`W`ORD} -AsPlainText -Force) -Enabled ${TR`ue} -Path ${o`U} -EmployeeID ${id} -Title ${T`iT`le} -Description ${d`IS} -Company ${coM`pa`NY} -HomeDrive ('Z:') -HomeDirectory ${ho`M`eDriVe} -ChangePasswordAtLogon ${TR`UE} 
      
      &("{1}{2}{0}{3}"-f'-Hos','W','rite','t') ('A'+'D '+'A'+'ccount '+"$Detailedname "+'c'+'rea'+'ted!') 
      
      .("{2}{1}{0}" -f 'ent','-cont','add') ${S`UcCessl`OG}  ('Use'+'r '+"$SAM "+'c'+'reat'+'ed '+'S'+'u'+'cessf'+'ully.')

   

      
      &("{6}{0}{4}{8}{3}{5}{1}{7}{2}"-f'lG','rsh','p','upMem','r','be','Add-ADPrincipa','i','o') -Identity ${S`Am} -MemberOf ${G`RoUp}
      
      .("{2}{1}{0}" -f '-Host','te','Wri') ("{3}{0}{1}{4}{2}"-f' Gro','ups','ded',' Added to',' Nee') 
      
      &("{3}{1}{0}{2}"-f'ten','dd-con','t','a') ${suCCe`s`sL`OG}  ('A'+'D '+'Use'+'r '+"$SAM "+'A'+'dded '+'to'+' '+'grou'+'ps '+'Su'+'c'+'ess'+'fully.')
      &("{0}{1}{2}" -f'Wri','te-Hos','t') -ForegroundColor ("{0}{1}"-f 'Gr','een') ${S`AM}

      
     .("{4}{2}{3}{0}{1}" -f 'l','box','nable-Ma','i','E') -Identity ${s`AM} -Alias ${s`Am}

 
 
${oUtl`o`OK} = &("{1}{0}{2}" -f'j','new-ob','ect') -ComObject ("{1}{3}{0}{4}{2}"-f'pp','Outlook.','on','A','licati')


${M`AiL} = ${O`uTLO`oK}.("{0}{2}{1}"-f 'Cr','ateItem','e').Invoke(0)



${suBJ`e`CT} = ("{2}{4}{3}{5}{0}{1}"-f'ion',' ','N','er I','ew Us','nformat')
${Ma`IL}."rEc`I`PientS".("{0}{1}" -f 'Ad','d').Invoke(("{3}{0}{2}{1}"-f 'to','.com','so','admin.it@con'))
${mA`iL}."SU`B`JeCt" = ${SubJ`E`ct}
${ma`iL}."B`ody" = (("{0}{2}{1}" -f'Hell','l,','o Al') + "`r`n" + "`r`n" + ("{3}{5}{4}{2}{0}{1}"-f 'orm','ation','er Inf','N','Us','ew ') + "`r`n" + ("{2}{1}{0}"-f' :','irst Name','F') + "  " + ${uS`erfIr`S`T`Name} + "`r`n" + ("{1}{3}{2}{0}"-f'e :','Las','Nam','t ') + "  " + ${la`ST`NA`ME} +"`r`n" + ("{1}{2}{0}"-f' :','E','UPOL ID#') + "  " + ${i`D} + "`r`n" + ("{1}{0}{2}"-f 'itio','Pos','n :') + " " + ${T`ITLe} + "`r`n" + ("{0}{3}{4}{2}{1}{5}" -f'AD','t','ea',' Account C','r','ed') + "`r`n" + ("{1}{2}{0}" -f' you','Th','ank') + "`r`n" + ("{7}{1}{3}{2}{5}{0}{6}{4}"-f'da','ah','ullah ','mat','da','Fe','yiza',' R') ) 

${M`AIl}.("{1}{0}"-f 'd','Sen').Invoke()


&("{1}{3}{2}{0}" -f 'st','W','e-Ho','rit') ("{0}{2}{1}{3}{4}" -f'Email s',' ','ent to','Ad','min.it')
    
&("{1}{2}{0}"-f 't','Add','-Conten') -Path ${S`Uc`CeSs`LOG} -Value ("{3}{2}{1}{4}{5}{0}{6}"-f'o Admin.','l ','mai','E','ha','s been sent t','it ')

.("{0}{1}{2}" -f 'Add-Co','nt','ent') ${s`UcCEs`sLOG} ("{3}{12}{6}{5}{7}{4}{15}{2}{9}{11}{8}{10}{1}{14}{0}{13}"-f '-------','-','--','--','-----','-','--','------------','-','-','---------','-','--','-','----','----------------')


&("{2}{0}{3}{1}"-f'ab','e-ADAccount','Dis','l') -Identity ${S`Am}

}
Else

      {&("{1}{2}{0}"-f 't','add-cont','en') ${Er`R`O`RlOg} (' '+'U'+'ser '+'Alr'+'e'+'ady '+'exist'+' '+': '+"$Detailedname")
      
      &("{0}{2}{1}"-f'Ad','tent','d-Con') ${E`RRo`RLog} ("{1}{7}{12}{15}{13}{4}{3}{6}{8}{11}{5}{14}{2}{9}{10}{0}"-f '-','----------------','------','--','--','--','--------','--','---------','------','-','---','----','---','-','-')
  
      
      }
      

 }
