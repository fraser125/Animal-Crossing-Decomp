lbl_804702B4:
/* 804702B4  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804702B8  2C 00 00 01 */	cmpwi r0, 1
/* 804702BC  41 82 00 0C */	beq lbl_804702C8
/* 804702C0  2C 00 00 03 */	cmpwi r0, 3
/* 804702C4  40 82 00 C0 */	bne lbl_80470384
lbl_804702C8:
/* 804702C8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804702CC  28 00 30 FC */	cmplwi r0, 0x30fc
/* 804702D0  41 80 00 14 */	blt lbl_804702E4
/* 804702D4  28 00 31 3B */	cmplwi r0, 0x313b
/* 804702D8  41 81 00 0C */	bgt lbl_804702E4
/* 804702DC  38 60 00 05 */	li r3, 5
/* 804702E0  4E 80 00 20 */	blr 
lbl_804702E4:
/* 804702E4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804702E8  28 00 15 B0 */	cmplwi r0, 0x15b0
/* 804702EC  41 80 00 14 */	blt lbl_80470300
/* 804702F0  28 00 17 AB */	cmplwi r0, 0x17ab
/* 804702F4  41 81 00 0C */	bgt lbl_80470300
/* 804702F8  38 60 00 01 */	li r3, 1
/* 804702FC  4E 80 00 20 */	blr 
lbl_80470300:
/* 80470300  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80470304  28 00 1D 08 */	cmplwi r0, 0x1d08
/* 80470308  41 80 00 0C */	blt lbl_80470314
/* 8047030C  28 00 1D 87 */	cmplwi r0, 0x1d87
/* 80470310  40 81 00 18 */	ble lbl_80470328
lbl_80470314:
/* 80470314  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80470318  28 00 1D 08 */	cmplwi r0, 0x1d08
/* 8047031C  41 80 00 14 */	blt lbl_80470330
/* 80470320  28 00 1D A7 */	cmplwi r0, 0x1da7
/* 80470324  41 81 00 0C */	bgt lbl_80470330
lbl_80470328:
/* 80470328  38 60 00 03 */	li r3, 3
/* 8047032C  4E 80 00 20 */	blr 
lbl_80470330:
/* 80470330  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80470334  28 00 17 AC */	cmplwi r0, 0x17ac
/* 80470338  41 80 00 0C */	blt lbl_80470344
/* 8047033C  28 00 1B A7 */	cmplwi r0, 0x1ba7
/* 80470340  40 81 00 18 */	ble lbl_80470358
lbl_80470344:
/* 80470344  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80470348  28 00 17 AC */	cmplwi r0, 0x17ac
/* 8047034C  41 80 00 14 */	blt lbl_80470360
/* 80470350  28 00 1B C7 */	cmplwi r0, 0x1bc7
/* 80470354  41 81 00 0C */	bgt lbl_80470360
lbl_80470358:
/* 80470358  38 60 00 02 */	li r3, 2
/* 8047035C  4E 80 00 20 */	blr 
lbl_80470360:
/* 80470360  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80470364  28 00 1E EC */	cmplwi r0, 0x1eec
/* 80470368  41 80 00 14 */	blt lbl_8047037C
/* 8047036C  28 00 1F 4F */	cmplwi r0, 0x1f4f
/* 80470370  41 81 00 0C */	bgt lbl_8047037C
/* 80470374  38 60 00 04 */	li r3, 4
/* 80470378  4E 80 00 20 */	blr 
lbl_8047037C:
/* 8047037C  38 60 00 00 */	li r3, 0
/* 80470380  4E 80 00 20 */	blr 
lbl_80470384:
/* 80470384  38 60 00 00 */	li r3, 0
/* 80470388  4E 80 00 20 */	blr 
