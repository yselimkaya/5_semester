;sirasiz bir grup veri icerisinden
; en kucuk degerlikli olaninin bulunmasi

	.data $40
	.byte 05,$75,$6D,$E0,$10,$24,00
	
	.code $0200
	
start	ldx $40		;kac islem yapilacak
	lda #$FF	;origin verisini al
ara	cmp $40,x	;gruptakilerle karsilastir
	bcc kal		;sor kucuk mu?
	lda $40,x	; hayir kucugu ele al
kal	dex		;evet sıradaki veri icin
	bne ara		;karsilastirmaya devam et
	inc $40		;orijinal sayaci bir
	ldx $40		;artir ve x e yukle
	sta $40,x	;dizi sonuna at
	brk
	
	end
