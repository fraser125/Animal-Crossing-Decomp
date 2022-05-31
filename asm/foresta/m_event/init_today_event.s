lbl_8039BA44:
/* 8039BA44  38 60 00 00 */	li r3, 0
/* 8039BA48  3D 00 81 16 */	lis r8, data_81167688@ha /* 0x81167688@ha */
/* 8039BA4C  38 00 00 10 */	li r0, 0x10
/* 8039BA50  38 E0 FF FF */	li r7, -1
/* 8039BA54  7C 66 1B 78 */	mr r6, r3
/* 8039BA58  7C 65 1B 78 */	mr r5, r3
/* 8039BA5C  7C 64 1B 78 */	mr r4, r3
/* 8039BA60  39 08 76 88 */	addi r8, r8, data_81167688@l /* 0x81167688@l */
/* 8039BA64  7C 09 03 A6 */	mtctr r0
lbl_8039BA68:
/* 8039BA68  39 28 00 24 */	addi r9, r8, 0x24
/* 8039BA6C  7D 29 1A 14 */	add r9, r9, r3
/* 8039BA70  38 63 00 10 */	addi r3, r3, 0x10
/* 8039BA74  90 E9 00 00 */	stw r7, 0(r9)
/* 8039BA78  90 C9 00 04 */	stw r6, 4(r9)
/* 8039BA7C  B0 A9 00 0A */	sth r5, 0xa(r9)
/* 8039BA80  B0 A9 00 08 */	sth r5, 8(r9)
/* 8039BA84  B0 89 00 0C */	sth r4, 0xc(r9)
/* 8039BA88  42 00 FF E0 */	bdnz lbl_8039BA68
/* 8039BA8C  38 80 00 00 */	li r4, 0
/* 8039BA90  38 00 00 77 */	li r0, 0x77
/* 8039BA94  90 88 00 00 */	stw r4, 0(r8)
/* 8039BA98  38 68 01 24 */	addi r3, r8, 0x124
/* 8039BA9C  38 80 00 FF */	li r4, 0xff
/* 8039BAA0  7C 09 03 A6 */	mtctr r0
lbl_8039BAA4:
/* 8039BAA4  98 83 00 00 */	stb r4, 0(r3)
/* 8039BAA8  38 63 00 01 */	addi r3, r3, 1
/* 8039BAAC  42 00 FF F8 */	bdnz lbl_8039BAA4
/* 8039BAB0  4E 80 00 20 */	blr 
