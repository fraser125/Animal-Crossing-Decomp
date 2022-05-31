lbl_80617B18:
/* 80617B18  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80617B1C  7C 08 02 A6 */	mflr r0
/* 80617B20  90 01 00 44 */	stw r0, 0x44(r1)
/* 80617B24  39 61 00 40 */	addi r11, r1, 0x40
/* 80617B28  4B A8 33 A1 */	bl func_8009AEC8
/* 80617B2C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80617B30  7C 7C 1B 78 */	mr r28, r3
/* 80617B34  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 80617B38  A8 1C 00 00 */	lha r0, 0(r28)
/* 80617B3C  3F E3 00 02 */	addis r31, r3, 2
/* 80617B40  3C C0 80 65 */	lis r6, lit_416@ha /* 0x8064C7D0@ha */
/* 80617B44  80 7F 60 9C */	lwz r3, 0x609c(r31)
/* 80617B48  20 00 00 28 */	subfic r0, r0, 0x28
/* 80617B4C  3C A0 80 65 */	lis r5, lit_417@ha /* 0x8064C7D4@ha */
/* 80617B50  7C 9D 23 78 */	mr r29, r4
/* 80617B54  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80617B58  7C 1E 07 34 */	extsh r30, r0
/* 80617B5C  C0 45 C7 D4 */	lfs f2, lit_417@l(r5)  /* 0x8064C7D4@l */
/* 80617B60  7F C3 F3 78 */	mr r3, r30
/* 80617B64  C0 26 C7 D0 */	lfs f1, lit_416@l(r6)  /* 0x8064C7D0@l */
/* 80617B68  38 80 00 00 */	li r4, 0
/* 80617B6C  38 A0 00 14 */	li r5, 0x14
/* 80617B70  7D 89 03 A6 */	mtctr r12
/* 80617B74  4E 80 04 21 */	bctrl 
/* 80617B78  FC 00 08 1E */	fctiwz f0, f1
/* 80617B7C  80 7F 60 9C */	lwz r3, 0x609c(r31)
/* 80617B80  3C A0 80 65 */	lis r5, lit_416@ha /* 0x8064C7D0@ha */
/* 80617B84  3C 80 80 65 */	lis r4, lit_418@ha /* 0x8064C7D8@ha */
/* 80617B88  38 C5 C7 D0 */	addi r6, r5, lit_416@l /* 0x8064C7D0@l */
/* 80617B8C  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80617B90  D8 01 00 08 */	stfd f0, 8(r1)
/* 80617B94  38 A4 C7 D8 */	addi r5, r4, lit_418@l /* 0x8064C7D8@l */
/* 80617B98  7F C3 F3 78 */	mr r3, r30
/* 80617B9C  C0 26 00 00 */	lfs f1, 0(r6)
/* 80617BA0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80617BA4  38 80 00 14 */	li r4, 0x14
/* 80617BA8  C0 45 00 00 */	lfs f2, 0(r5)
/* 80617BAC  38 A0 00 29 */	li r5, 0x29
/* 80617BB0  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 80617BB4  7D 89 03 A6 */	mtctr r12
/* 80617BB8  4E 80 04 21 */	bctrl 
/* 80617BBC  FC 00 08 1E */	fctiwz f0, f1
/* 80617BC0  80 7F 60 9C */	lwz r3, 0x609c(r31)
/* 80617BC4  3C A0 80 65 */	lis r5, lit_416@ha /* 0x8064C7D0@ha */
/* 80617BC8  3C 80 80 65 */	lis r4, lit_419@ha /* 0x8064C7DC@ha */
/* 80617BCC  38 C5 C7 D0 */	addi r6, r5, lit_416@l /* 0x8064C7D0@l */
/* 80617BD0  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80617BD4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80617BD8  38 A4 C7 DC */	addi r5, r4, lit_419@l /* 0x8064C7DC@l */
/* 80617BDC  7F C3 F3 78 */	mr r3, r30
/* 80617BE0  C0 26 00 00 */	lfs f1, 0(r6)
/* 80617BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80617BE8  38 80 00 00 */	li r4, 0
/* 80617BEC  C0 45 00 00 */	lfs f2, 0(r5)
/* 80617BF0  38 A0 00 14 */	li r5, 0x14
/* 80617BF4  54 1A 06 3E */	clrlwi r26, r0, 0x18
/* 80617BF8  7D 89 03 A6 */	mtctr r12
/* 80617BFC  4E 80 04 21 */	bctrl 
/* 80617C00  FC 00 08 1E */	fctiwz f0, f1
/* 80617C04  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 80617C08  7F A3 EB 78 */	mr r3, r29
/* 80617C0C  38 9C 00 10 */	addi r4, r28, 0x10
/* 80617C10  81 85 00 1C */	lwz r12, 0x1c(r5)
/* 80617C14  38 BC 00 34 */	addi r5, r28, 0x34
/* 80617C18  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80617C1C  38 DC 00 40 */	addi r6, r28, 0x40
/* 80617C20  83 DD 00 00 */	lwz r30, 0(r29)
/* 80617C24  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80617C28  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 80617C2C  7D 89 03 A6 */	mtctr r12
/* 80617C30  4E 80 04 21 */	bctrl 
/* 80617C34  80 FE 02 E0 */	lwz r7, 0x2e0(r30)
/* 80617C38  57 63 80 1E */	slwi r3, r27, 0x10
/* 80617C3C  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 80617C40  57 80 C0 0E */	slwi r0, r28, 0x18
/* 80617C44  38 A7 00 08 */	addi r5, r7, 8
/* 80617C48  64 63 FF 00 */	oris r3, r3, 0xff00
/* 80617C4C  90 BE 02 E0 */	stw r5, 0x2e0(r30)
/* 80617C50  38 84 00 80 */	addi r4, r4, 0x0080 /* 0xFA000080@l */
/* 80617C54  60 63 32 00 */	ori r3, r3, 0x3200
/* 80617C58  64 05 00 1E */	oris r5, r0, 0x1e
/* 80617C5C  90 87 00 00 */	stw r4, 0(r7)
/* 80617C60  7C 60 D3 78 */	or r0, r3, r26
/* 80617C64  3C 60 80 CC */	lis r3, ef_muka01_00_modelT@ha /* 0x80CB9320@ha */
/* 80617C68  3C C0 FB 00 */	lis r6, 0xfb00
/* 80617C6C  90 07 00 04 */	stw r0, 4(r7)
/* 80617C70  60 A5 1E FF */	ori r5, r5, 0x1eff
/* 80617C74  3C 80 DE 00 */	lis r4, 0xde00
/* 80617C78  38 03 93 20 */	addi r0, r3, ef_muka01_00_modelT@l /* 0x80CB9320@l */
/* 80617C7C  80 FE 02 E0 */	lwz r7, 0x2e0(r30)
/* 80617C80  38 67 00 08 */	addi r3, r7, 8
/* 80617C84  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80617C88  90 C7 00 00 */	stw r6, 0(r7)
/* 80617C8C  90 A7 00 04 */	stw r5, 4(r7)
/* 80617C90  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 80617C94  38 65 00 08 */	addi r3, r5, 8
/* 80617C98  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80617C9C  90 85 00 00 */	stw r4, 0(r5)
/* 80617CA0  90 05 00 04 */	stw r0, 4(r5)
/* 80617CA4  39 61 00 40 */	addi r11, r1, 0x40
/* 80617CA8  4B A8 32 6D */	bl func_8009AF14
/* 80617CAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80617CB0  7C 08 03 A6 */	mtlr r0
/* 80617CB4  38 21 00 40 */	addi r1, r1, 0x40
/* 80617CB8  4E 80 00 20 */	blr 
