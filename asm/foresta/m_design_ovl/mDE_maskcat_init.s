lbl_805D78D0:
/* 805D78D0  38 80 00 0F */	li r4, 0xf
/* 805D78D4  38 00 02 00 */	li r0, 0x200
/* 805D78D8  98 83 02 20 */	stb r4, 0x220(r3)
/* 805D78DC  38 A0 00 00 */	li r5, 0
/* 805D78E0  38 80 00 FF */	li r4, 0xff
/* 805D78E4  7C 09 03 A6 */	mtctr r0
lbl_805D78E8:
/* 805D78E8  38 05 00 20 */	addi r0, r5, 0x20
/* 805D78EC  38 A5 00 01 */	addi r5, r5, 1
/* 805D78F0  7C 83 01 AE */	stbx r4, r3, r0
/* 805D78F4  42 00 FF F4 */	bdnz lbl_805D78E8
/* 805D78F8  4E 80 00 20 */	blr 
