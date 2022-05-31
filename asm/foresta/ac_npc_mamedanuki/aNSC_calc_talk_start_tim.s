lbl_8055A498:
/* 8055A498  80 83 09 C0 */	lwz r4, 0x9c0(r3)
/* 8055A49C  2C 04 FF FF */	cmpwi r4, -1
/* 8055A4A0  41 81 00 0C */	bgt lbl_8055A4AC
/* 8055A4A4  38 80 00 B4 */	li r4, 0xb4
/* 8055A4A8  48 00 00 10 */	b lbl_8055A4B8
lbl_8055A4AC:
/* 8055A4AC  2C 04 00 00 */	cmpwi r4, 0
/* 8055A4B0  41 82 00 08 */	beq lbl_8055A4B8
/* 8055A4B4  38 84 FF FF */	addi r4, r4, -1
lbl_8055A4B8:
/* 8055A4B8  90 83 09 C0 */	stw r4, 0x9c0(r3)
/* 8055A4BC  4E 80 00 20 */	blr 
