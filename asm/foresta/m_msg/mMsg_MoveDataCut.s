lbl_803C0D74:
/* 803C0D74  7C 04 28 00 */	cmpw r4, r5
/* 803C0D78  7C CA 33 78 */	mr r10, r6
/* 803C0D7C  40 80 00 70 */	bge lbl_803C0DEC
/* 803C0D80  7C 05 30 50 */	subf r0, r5, r6
/* 803C0D84  7D 23 2A 14 */	add r9, r3, r5
/* 803C0D88  7D 03 22 14 */	add r8, r3, r4
/* 803C0D8C  7C 09 03 A6 */	mtctr r0
/* 803C0D90  7C 05 30 00 */	cmpw r5, r6
/* 803C0D94  40 80 00 20 */	bge lbl_803C0DB4
lbl_803C0D98:
/* 803C0D98  88 09 00 00 */	lbz r0, 0(r9)
/* 803C0D9C  38 84 00 01 */	addi r4, r4, 1
/* 803C0DA0  38 A5 00 01 */	addi r5, r5, 1
/* 803C0DA4  39 29 00 01 */	addi r9, r9, 1
/* 803C0DA8  98 08 00 00 */	stb r0, 0(r8)
/* 803C0DAC  39 08 00 01 */	addi r8, r8, 1
/* 803C0DB0  42 00 FF E8 */	bdnz lbl_803C0D98
lbl_803C0DB4:
/* 803C0DB4  2C 07 00 00 */	cmpwi r7, 0
/* 803C0DB8  7C 04 28 50 */	subf r0, r4, r5
/* 803C0DBC  7D 40 50 50 */	subf r10, r0, r10
/* 803C0DC0  41 82 00 74 */	beq lbl_803C0E34
/* 803C0DC4  7C 04 30 50 */	subf r0, r4, r6
/* 803C0DC8  7C 63 22 14 */	add r3, r3, r4
/* 803C0DCC  38 A0 00 20 */	li r5, 0x20
/* 803C0DD0  7C 09 03 A6 */	mtctr r0
/* 803C0DD4  7C 04 30 00 */	cmpw r4, r6
/* 803C0DD8  40 80 00 5C */	bge lbl_803C0E34
lbl_803C0DDC:
/* 803C0DDC  98 A3 00 00 */	stb r5, 0(r3)
/* 803C0DE0  38 63 00 01 */	addi r3, r3, 1
/* 803C0DE4  42 00 FF F8 */	bdnz lbl_803C0DDC
/* 803C0DE8  48 00 00 4C */	b lbl_803C0E34
lbl_803C0DEC:
/* 803C0DEC  40 81 00 48 */	ble lbl_803C0E34
/* 803C0DF0  7C 05 20 50 */	subf r0, r5, r4
/* 803C0DF4  7C 85 30 50 */	subf r4, r5, r6
/* 803C0DF8  7D 4A 02 14 */	add r10, r10, r0
/* 803C0DFC  2C 0A 06 00 */	cmpwi r10, 0x600
/* 803C0E00  41 81 00 34 */	bgt lbl_803C0E34
/* 803C0E04  38 AA FF FF */	addi r5, r10, -1
/* 803C0E08  38 C6 FF FF */	addi r6, r6, -1
/* 803C0E0C  7C A3 2A 14 */	add r5, r3, r5
/* 803C0E10  7C C3 32 14 */	add r6, r3, r6
/* 803C0E14  7C 89 03 A6 */	mtctr r4
/* 803C0E18  2C 04 00 00 */	cmpwi r4, 0
/* 803C0E1C  40 81 00 18 */	ble lbl_803C0E34
lbl_803C0E20:
/* 803C0E20  88 06 00 00 */	lbz r0, 0(r6)
/* 803C0E24  38 C6 FF FF */	addi r6, r6, -1
/* 803C0E28  98 05 00 00 */	stb r0, 0(r5)
/* 803C0E2C  38 A5 FF FF */	addi r5, r5, -1
/* 803C0E30  42 00 FF F0 */	bdnz lbl_803C0E20
lbl_803C0E34:
/* 803C0E34  7D 43 53 78 */	mr r3, r10
/* 803C0E38  4E 80 00 20 */	blr 
