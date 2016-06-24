	#Script for button event
	$Services_Click = {
		$temp = Get-Service | Format-List|Out-String
		$mRichTextBox1.appendtext("$temp")
		}
   
    Add-Type -AssemblyName System.Windows.Forms 
    Add-Type -AssemblyName System.Drawing 
    $MyForm = New-Object System.Windows.Forms.Form 
    $MyForm.Text="MyForm" 
    $MyForm.Size = New-Object System.Drawing.Size(1600,900) 
     
 
        $mRichTextBox1 = New-Object System.Windows.Forms.RichTextBox 
                $mRichTextBox1.Text="RichTextBox1" 
                $mRichTextBox1.Top="50" 
                $mRichTextBox1.Left="2" 
                $mRichTextBox1.Anchor="Left,Top" 
        $mRichTextBox1.Size = New-Object System.Drawing.Size(1550,850) 
        $MyForm.Controls.Add($mRichTextBox1) 
         
 
        $Services = New-Object System.Windows.Forms.Button 
                $Services.Text="Services" 
                $Services.Top="24" 
                $Services.Left="5" 
                $Services.Anchor="Left,Top" 
        $Services.Size = New-Object System.Drawing.Size(100,23) 
        $MyForm.Controls.Add($Services) 
        #Button Events
		$Services.Add_Click($Services_Click)
		
		$MyForm.ShowDialog()
