lbl_8053602C:
/* 8053602C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80536030  7C 08 02 A6 */	mflr r0
/* 80536034  38 80 00 00 */	li r4, 0
/* 80536038  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053603C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80536040  7C 7F 1B 78 */	mr r31, r3
/* 80536044  80 63 08 68 */	lwz r3, 0x868(r3)
/* 80536048  28 03 00 00 */	cmplwi r3, 0
/* 8053604C  41 82 00 5C */	beq lbl_805360A8
/* 80536050  A0 63 00 00 */	lhz r3, 0(r3)
/* 80536054  28 03 00 2A */	cmplwi r3, 0x2a
/* 80536058  41 80 00 50 */	blt lbl_805360A8
/* 8053605C  28 03 00 42 */	cmplwi r3, 0x42
/* 80536060  41 81 00 48 */	bgt lbl_805360A8
/* 80536064  A0 DF 00 06 */	lhz r6, 6(r31)
/* 80536068  54 C0 A7 3E */	rlwinm r0, r6, 0x14, 0x1c, 0x1f
/* 8053606C  2C 00 00 0E */	cmpwi r0, 0xe
/* 80536070  40 82 00 38 */	bne lbl_805360A8
/* 80536074  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80536078  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8053607C  3C A4 00 02 */	addis r5, r4, 2
/* 80536080  80 9F 08 6C */	lwz r4, 0x86c(r31)
/* 80536084  80 E5 60 80 */	lwz r7, 0x6080(r5)
/* 80536088  80 BF 08 70 */	lwz r5, 0x870(r31)
/* 8053608C  81 87 00 18 */	lwz r12, 0x18(r7)
/* 80536090  7D 89 03 A6 */	mtctr r12
/* 80536094  4E 80 04 21 */	bctrl 
/* 80536098  38 00 00 01 */	li r0, 1
/* 8053609C  38 80 00 01 */	li r4, 1
/* 805360A0  98 1F 08 4E */	stb r0, 0x84e(r31)
/* 805360A4  98 1F 07 C8 */	stb r0, 0x7c8(r31)
lbl_805360A8:
/* 805360A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805360AC  7C 83 23 78 */	mr r3, r4
/* 805360B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805360B4  7C 08 03 A6 */	mtlr r0
/* 805360B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805360BC  4E 80 00 20 */	blr 
