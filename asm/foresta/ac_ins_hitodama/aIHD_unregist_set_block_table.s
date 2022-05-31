lbl_8059AA18:
/* 8059AA18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059AA1C  7C 08 02 A6 */	mflr r0
/* 8059AA20  38 80 00 37 */	li r4, 0x37
/* 8059AA24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059AA28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059AA2C  7C 7F 1B 78 */	mr r31, r3
/* 8059AA30  38 60 00 72 */	li r3, 0x72
/* 8059AA34  4B E0 36 A9 */	bl mEv_get_common_area
/* 8059AA38  28 03 00 00 */	cmplwi r3, 0
/* 8059AA3C  41 82 00 4C */	beq lbl_8059AA88
/* 8059AA40  38 00 00 05 */	li r0, 5
/* 8059AA44  88 BF 00 08 */	lbz r5, 8(r31)
/* 8059AA48  88 9F 00 09 */	lbz r4, 9(r31)
/* 8059AA4C  38 E0 00 00 */	li r7, 0
/* 8059AA50  7C 09 03 A6 */	mtctr r0
lbl_8059AA54:
/* 8059AA54  7C C3 3A 14 */	add r6, r3, r7
/* 8059AA58  88 06 00 00 */	lbz r0, 0(r6)
/* 8059AA5C  7C 05 00 40 */	cmplw r5, r0
/* 8059AA60  40 82 00 20 */	bne lbl_8059AA80
/* 8059AA64  88 06 00 05 */	lbz r0, 5(r6)
/* 8059AA68  7C 00 20 40 */	cmplw r0, r4
/* 8059AA6C  40 82 00 14 */	bne lbl_8059AA80
/* 8059AA70  38 00 00 FF */	li r0, 0xff
/* 8059AA74  98 06 00 00 */	stb r0, 0(r6)
/* 8059AA78  98 06 00 05 */	stb r0, 5(r6)
/* 8059AA7C  48 00 00 0C */	b lbl_8059AA88
lbl_8059AA80:
/* 8059AA80  38 E7 00 01 */	addi r7, r7, 1
/* 8059AA84  42 00 FF D0 */	bdnz lbl_8059AA54
lbl_8059AA88:
/* 8059AA88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059AA8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059AA90  7C 08 03 A6 */	mtlr r0
/* 8059AA94  38 21 00 10 */	addi r1, r1, 0x10
/* 8059AA98  4E 80 00 20 */	blr 
