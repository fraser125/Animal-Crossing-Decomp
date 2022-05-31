lbl_805749E8:
/* 805749E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805749EC  7C 08 02 A6 */	mflr r0
/* 805749F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805749F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805749F8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805749FC  3C 64 00 03 */	addis r3, r4, 3
/* 80574A00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80574A04  3C 84 00 02 */	addis r4, r4, 2
/* 80574A08  3B E0 00 00 */	li r31, 0
/* 80574A0C  38 63 88 C0 */	addi r3, r3, -30528
/* 80574A10  38 84 25 40 */	addi r4, r4, 0x2540
/* 80574A14  4B E3 ED F9 */	bl mLd_CheckCmpLandName
/* 80574A18  2C 03 00 01 */	cmpwi r3, 1
/* 80574A1C  40 82 00 34 */	bne lbl_80574A50
/* 80574A20  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80574A24  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80574A28  3C 64 00 03 */	addis r3, r4, 3
/* 80574A2C  3C A4 00 02 */	addis r5, r4, 2
/* 80574A30  A0 83 88 D2 */	lhz r4, -0x772e(r3)
/* 80574A34  A0 C5 25 52 */	lhz r6, 0x2552(r5)
/* 80574A38  38 63 88 C8 */	addi r3, r3, -30520
/* 80574A3C  38 A5 25 48 */	addi r5, r5, 0x2548
/* 80574A40  4B E3 EE 39 */	bl mLd_CheckCmpLand
/* 80574A44  2C 03 00 01 */	cmpwi r3, 1
/* 80574A48  40 82 00 08 */	bne lbl_80574A50
/* 80574A4C  3B E0 00 01 */	li r31, 1
lbl_80574A50:
/* 80574A50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80574A54  7F E3 FB 78 */	mr r3, r31
/* 80574A58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80574A5C  7C 08 03 A6 */	mtlr r0
/* 80574A60  38 21 00 10 */	addi r1, r1, 0x10
/* 80574A64  4E 80 00 20 */	blr 
