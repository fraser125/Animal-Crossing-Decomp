lbl_8061BBB0:
/* 8061BBB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061BBB4  7C 08 02 A6 */	mflr r0
/* 8061BBB8  7C 69 1B 78 */	mr r9, r3
/* 8061BBBC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8061BBC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061BBC4  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8061BBC8  A8 A9 00 4E */	lha r5, 0x4e(r9)
/* 8061BBCC  A8 C9 00 00 */	lha r6, 0(r9)
/* 8061BBD0  38 05 01 00 */	addi r0, r5, 0x100
/* 8061BBD4  B0 09 00 4E */	sth r0, 0x4e(r9)
/* 8061BBD8  20 06 01 40 */	subfic r0, r6, 0x140
/* 8061BBDC  7C 05 07 34 */	extsh r5, r0
/* 8061BBE0  80 63 00 00 */	lwz r3, 0(r3)
/* 8061BBE4  A8 63 18 E0 */	lha r3, 0x18e0(r3)
/* 8061BBE8  38 03 00 4C */	addi r0, r3, 0x4c
/* 8061BBEC  7C 05 00 00 */	cmpw r5, r0
/* 8061BBF0  40 82 00 58 */	bne lbl_8061BC48
/* 8061BBF4  80 A9 00 10 */	lwz r5, 0x10(r9)
/* 8061BBF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061BBFC  80 09 00 14 */	lwz r0, 0x14(r9)
/* 8061BC00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061BC04  7C 87 23 78 */	mr r7, r4
/* 8061BC08  38 81 00 08 */	addi r4, r1, 8
/* 8061BC0C  90 A1 00 08 */	stw r5, 8(r1)
/* 8061BC10  3C 63 00 02 */	addis r3, r3, 2
/* 8061BC14  80 A3 60 9C */	lwz r5, 0x609c(r3)
/* 8061BC18  38 60 00 75 */	li r3, 0x75
/* 8061BC1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061BC20  39 40 00 00 */	li r10, 0
/* 8061BC24  80 09 00 18 */	lwz r0, 0x18(r9)
/* 8061BC28  90 01 00 10 */	stw r0, 0x10(r1)
/* 8061BC2C  81 85 00 00 */	lwz r12, 0(r5)
/* 8061BC30  A1 09 00 0C */	lhz r8, 0xc(r9)
/* 8061BC34  88 A9 00 0E */	lbz r5, 0xe(r9)
/* 8061BC38  A8 C9 00 08 */	lha r6, 8(r9)
/* 8061BC3C  A9 29 00 4C */	lha r9, 0x4c(r9)
/* 8061BC40  7D 89 03 A6 */	mtctr r12
/* 8061BC44  4E 80 04 21 */	bctrl 
lbl_8061BC48:
/* 8061BC48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061BC4C  7C 08 03 A6 */	mtlr r0
/* 8061BC50  38 21 00 20 */	addi r1, r1, 0x20
/* 8061BC54  4E 80 00 20 */	blr 
