lbl_80386DCC:
/* 80386DCC  38 00 00 02 */	li r0, 2
/* 80386DD0  38 A0 00 00 */	li r5, 0
/* 80386DD4  7C 09 03 A6 */	mtctr r0
lbl_80386DD8:
/* 80386DD8  38 05 00 02 */	addi r0, r5, 2
/* 80386DDC  7C 04 02 AE */	lhax r0, r4, r0
/* 80386DE0  2C 00 00 01 */	cmpwi r0, 1
/* 80386DE4  41 82 00 2C */	beq lbl_80386E10
/* 80386DE8  40 80 00 3C */	bge lbl_80386E24
/* 80386DEC  2C 00 00 00 */	cmpwi r0, 0
/* 80386DF0  40 80 00 08 */	bge lbl_80386DF8
/* 80386DF4  48 00 00 30 */	b lbl_80386E24
lbl_80386DF8:
/* 80386DF8  A0 C3 00 00 */	lhz r6, 0(r3)
/* 80386DFC  54 C0 DE FE */	rlwinm r0, r6, 0x1b, 0x1b, 0x1f
/* 80386E00  60 00 00 01 */	ori r0, r0, 1
/* 80386E04  50 06 2D B4 */	rlwimi r6, r0, 5, 0x16, 0x1a
/* 80386E08  B0 C3 00 00 */	sth r6, 0(r3)
/* 80386E0C  48 00 00 18 */	b lbl_80386E24
lbl_80386E10:
/* 80386E10  88 C3 00 00 */	lbz r6, 0(r3)
/* 80386E14  54 C0 F6 FE */	rlwinm r0, r6, 0x1e, 0x1b, 0x1f
/* 80386E18  60 00 00 01 */	ori r0, r0, 1
/* 80386E1C  50 06 16 7A */	rlwimi r6, r0, 2, 0x19, 0x1d
/* 80386E20  98 C3 00 00 */	stb r6, 0(r3)
lbl_80386E24:
/* 80386E24  38 A5 00 04 */	addi r5, r5, 4
/* 80386E28  42 00 FF B0 */	bdnz lbl_80386DD8
/* 80386E2C  4E 80 00 20 */	blr 
