lbl_80542EF8:
/* 80542EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80542EFC  7C 08 02 A6 */	mflr r0
/* 80542F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80542F04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80542F08  7C 7F 1B 78 */	mr r31, r3
/* 80542F0C  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 80542F10  28 00 00 FF */	cmplwi r0, 0xff
/* 80542F14  40 82 00 1C */	bne lbl_80542F30
/* 80542F18  38 60 40 80 */	li r3, 0x4080
/* 80542F1C  4B FF E0 1D */	bl func_80540F38
/* 80542F20  38 60 00 32 */	li r3, 0x32
/* 80542F24  38 00 00 01 */	li r0, 1
/* 80542F28  98 7F 00 D6 */	stb r3, 0xd6(r31)
/* 80542F2C  98 1F 07 C8 */	stb r0, 0x7c8(r31)
lbl_80542F30:
/* 80542F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80542F34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80542F38  7C 08 03 A6 */	mtlr r0
/* 80542F3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80542F40  4E 80 00 20 */	blr 
