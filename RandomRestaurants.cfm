<CFPARAM Name="Session.DollarSigns" Default="">
<CFPARAM Name="Form.DollarSignsRadio" Default="">

<CFSET Restaurants = ArrayNew(2)>

<CFSET Restaurants[1][1] = "McDonald's">
<CFSET Restaurants[1][2] = "Taco Bell">
<CFSET Restaurants[1][3] = "Burger King">
<CFSET Restaurants[1][4] = "Sam's">
<CFSET Restaurants[1][5] = "Krystal's">
<CFSET Restaurants[1][6] = "Sonic">
<CFSET Restaurants[1][7] = "Wendy's">
<CFSET Restaurants[1][8] = "Costco">

<CFSET Restaurants[2][1] = "KFC">
<CFSET Restaurants[2][2] = "Subway">
<CFSET Restaurants[2][3] = "Quiznos">
<CFSET Restaurants[2][4] = "Hardee's">
<CFSET Restaurants[2][5] = "Chick-Fil-A">
<CFSET Restaurants[2][6] = "Kroger">
<CFSET Restaurants[2][7] = "Arbys">
<CFSET Restaurants[2][8] = "Soup Kitchen">
<CFSET Restaurants[2][9] = "Zhu Garden">
<CFSET Restaurants[2][10] = "Petro's">

<CFSET Restaurants[3][1] = "Dickey's">
<CFSET Restaurants[3][2] = "Gondolier">
<CFSET Restaurants[3][3] = "Shoney's">
<CFSET Restaurants[3][4] = "Cancun">
<CFSET Restaurants[3][5] = "Gatti's">
<CFSET Restaurants[3][6] = "Waffle House">
<CFSET Restaurants[3][7] = "AppleBee's">
<CFSET Restaurants[3][8] = "Rafferty's">

<CFIF Session.DollarSigns EQ "">
	<CFSET Session.DollarSigns = RandRange(1, 3, "SHA1PRNG")>
</CFIF>

<CFIF Form.DollarSignsRadio NEQ "">
	<CFSET Session.DollarSigns = Form.DollarSignsRadio>
</CFIF>

<CFFORM ACTION="RandomRestaurants.cfm" METHOD="POST" NAME="RandomRestaurants">

<TABLE Cellspacing="0" Cellpadding="0" Border="0" Width="100%" Height="100%" Align="Center">
<TR>
<TD>

	<TABLE Cellspacing="0" Cellpadding="0" Border="0" Width="800" Align="Center">
	<TR>
	<TD Align="Center">$</TD>
	<TD Align="Center">$$</TD>
	<TD Align="Center">$$$</TD>
	</TR>

	<TR>
	<TD Align="Center"><INPUT TYPE="Radio" NAME="DollarSignsRadio" VALUE=1 <cfif Session.DollarSigns EQ 1>checked</cfif>></TD>
	<TD Align="Center"><INPUT TYPE="Radio" NAME="DollarSignsRadio" VALUE=2 <cfif Session.DollarSigns EQ 2>checked</cfif>></TD>
	<TD Align="Center"><INPUT TYPE="Radio" NAME="DollarSignsRadio" VALUE=3 <cfif Session.DollarSigns EQ 3>checked</cfif>></TD>
	</TR>

	<TR>
	<TD>&nbsp;</TD>
	</TR>
	</TABLE>

	<TABLE Cellspacing="0" Cellpadding="0" Border="0" Width="800" Align="Center">
	<TR>
	<TD Align="center">
		<FONT Size="5">You Should Eat At<br></FONT>
		<FONT Size="7"><b><CFOUTPUT>#Restaurants[Session.DollarSigns][RandRange(1, ArrayLen(Restaurants[Session.DollarSigns]), "SHA1PRNG")]#</CFOUTPUT></b><br><br></FONT>
		<INPUT TYPE="submit" VALUE="Try Again!">
	</TD>
	</TR>
	</TABLE>

</TD>
</TR>
</TABLE>

</CFFORM>