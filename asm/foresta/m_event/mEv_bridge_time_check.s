lbl_8039C154:
/* 8039C154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039C158  7C 08 02 A6 */	mflr r0
/* 8039C15C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039C160  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039C164  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039C168  3C A3 00 02 */	addis r5, r3, 2
/* 8039C16C  80 65 61 20 */	lwz r3, 0x6120(r5)
/* 8039C170  80 05 61 24 */	lwz r0, 0x6124(r5)
/* 8039C174  90 61 00 08 */	stw r3, 8(r1)
/* 8039C178  A0 65 13 F4 */	lhz r3, 0x13f4(r5)
/* 8039C17C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8039C180  88 85 13 F6 */	lbz r4, 0x13f6(r5)
/* 8039C184  88 A5 13 F7 */	lbz r5, 0x13f7(r5)
/* 8039C188  A0 C1 00 0E */	lhz r6, 0xe(r1)
/* 8039C18C  88 E1 00 0D */	lbz r7, 0xd(r1)
/* 8039C190  89 01 00 0B */	lbz r8, 0xb(r1)
/* 8039C194  48 06 A6 59 */	bl lbRTC_IsEqualDate
/* 8039C198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039C19C  7C 08 03 A6 */	mtlr r0
/* 8039C1A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8039C1A4  4E 80 00 20 */	blr 