lbl_803758BC:
/* 803758BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803758C0  7C 08 02 A6 */	mflr r0
/* 803758C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803758C8  A8 01 00 3E */	lha r0, 0x3e(r1)
/* 803758CC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803758D0  7C 9F 23 78 */	mr r31, r4
/* 803758D4  7C A4 2B 78 */	mr r4, r5
/* 803758D8  7C C5 33 78 */	mr r5, r6
/* 803758DC  91 41 00 08 */	stw r10, 8(r1)
/* 803758E0  7C E6 3B 78 */	mr r6, r7
/* 803758E4  A1 41 00 3A */	lhz r10, 0x3a(r1)
/* 803758E8  7D 07 43 78 */	mr r7, r8
/* 803758EC  7D 28 4B 78 */	mr r8, r9
/* 803758F0  39 20 FF FF */	li r9, -1
/* 803758F4  91 41 00 0C */	stw r10, 0xc(r1)
/* 803758F8  81 41 00 40 */	lwz r10, 0x40(r1)
/* 803758FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80375900  38 00 FF FF */	li r0, -1
/* 80375904  90 01 00 14 */	stw r0, 0x14(r1)
/* 80375908  91 41 00 18 */	stw r10, 0x18(r1)
/* 8037590C  39 40 FF FF */	li r10, -1
/* 80375910  4B FF FE 39 */	bl Actor_info_make_actor
/* 80375914  28 03 00 00 */	cmplwi r3, 0
/* 80375918  41 82 00 0C */	beq lbl_80375924
/* 8037591C  90 7F 01 50 */	stw r3, 0x150(r31)
/* 80375920  93 E3 01 4C */	stw r31, 0x14c(r3)
lbl_80375924:
/* 80375924  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80375928  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8037592C  7C 08 03 A6 */	mtlr r0
/* 80375930  38 21 00 30 */	addi r1, r1, 0x30
/* 80375934  4E 80 00 20 */	blr 
