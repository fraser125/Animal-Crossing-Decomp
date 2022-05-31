lbl_8060AE7C:
/* 8060AE7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8060AE80  7C 08 02 A6 */	mflr r0
/* 8060AE84  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060AE88  39 61 00 20 */	addi r11, r1, 0x20
/* 8060AE8C  4B A9 00 49 */	bl func_8009AED4
/* 8060AE90  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8060AE94  3C E0 80 65 */	lis r7, lit_419@ha /* 0x8064BEDC@ha */
/* 8060AE98  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8060AE9C  3C C0 80 65 */	lis r6, lit_451@ha /* 0x8064BF0C@ha */
/* 8060AEA0  3F E5 00 02 */	addis r31, r5, 2
/* 8060AEA4  7C 7D 1B 78 */	mr r29, r3
/* 8060AEA8  80 7F 60 9C */	lwz r3, 0x609c(r31)
/* 8060AEAC  7C 9E 23 78 */	mr r30, r4
/* 8060AEB0  38 80 00 00 */	li r4, 0
/* 8060AEB4  38 A0 00 08 */	li r5, 8
/* 8060AEB8  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8060AEBC  A8 7D 00 00 */	lha r3, 0(r29)
/* 8060AEC0  C0 27 BE DC */	lfs f1, lit_419@l(r7)  /* 0x8064BEDC@l */
/* 8060AEC4  C0 46 BF 0C */	lfs f2, lit_451@l(r6)  /* 0x8064BF0C@l */
/* 8060AEC8  7D 89 03 A6 */	mtctr r12
/* 8060AECC  4E 80 04 21 */	bctrl 
/* 8060AED0  FC 00 08 1E */	fctiwz f0, f1
/* 8060AED4  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 8060AED8  7F C3 F3 78 */	mr r3, r30
/* 8060AEDC  38 9D 00 10 */	addi r4, r29, 0x10
/* 8060AEE0  81 85 00 1C */	lwz r12, 0x1c(r5)
/* 8060AEE4  38 BD 00 34 */	addi r5, r29, 0x34
/* 8060AEE8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8060AEEC  38 DD 00 40 */	addi r6, r29, 0x40
/* 8060AEF0  83 FE 00 00 */	lwz r31, 0(r30)
/* 8060AEF4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8060AEF8  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 8060AEFC  7D 89 03 A6 */	mtctr r12
/* 8060AF00  4E 80 04 21 */	bctrl 
/* 8060AF04  81 1F 02 E0 */	lwz r8, 0x2e0(r31)
/* 8060AF08  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 8060AF0C  67 C7 28 1E */	oris r7, r30, 0x281e
/* 8060AF10  3C 80 64 65 */	lis r4, 0x6465 /* 0x6464FFFF@ha */
/* 8060AF14  38 08 00 08 */	addi r0, r8, 8
/* 8060AF18  3C 60 80 CB */	lis r3, ef_doyon01_00_modelT@ha /* 0x80CB22A0@ha */
/* 8060AF1C  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 8060AF20  38 05 00 FF */	addi r0, r5, 0x00FF /* 0xFA0000FF@l */
/* 8060AF24  60 E7 28 00 */	ori r7, r7, 0x2800
/* 8060AF28  3C C0 FB 00 */	lis r6, 0xfb00
/* 8060AF2C  90 08 00 00 */	stw r0, 0(r8)
/* 8060AF30  38 A4 FF FF */	addi r5, r4, 0xFFFF /* 0x6464FFFF@l */
/* 8060AF34  3C 80 DE 00 */	lis r4, 0xde00
/* 8060AF38  38 03 22 A0 */	addi r0, r3, ef_doyon01_00_modelT@l /* 0x80CB22A0@l */
/* 8060AF3C  90 E8 00 04 */	stw r7, 4(r8)
/* 8060AF40  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 8060AF44  38 67 00 08 */	addi r3, r7, 8
/* 8060AF48  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060AF4C  90 C7 00 00 */	stw r6, 0(r7)
/* 8060AF50  90 A7 00 04 */	stw r5, 4(r7)
/* 8060AF54  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 8060AF58  38 65 00 08 */	addi r3, r5, 8
/* 8060AF5C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060AF60  90 85 00 00 */	stw r4, 0(r5)
/* 8060AF64  90 05 00 04 */	stw r0, 4(r5)
/* 8060AF68  39 61 00 20 */	addi r11, r1, 0x20
/* 8060AF6C  4B A8 FF B5 */	bl func_8009AF20
/* 8060AF70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060AF74  7C 08 03 A6 */	mtlr r0
/* 8060AF78  38 21 00 20 */	addi r1, r1, 0x20
/* 8060AF7C  4E 80 00 20 */	blr 
