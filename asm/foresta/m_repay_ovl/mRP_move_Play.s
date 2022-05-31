lbl_805EC598:
/* 805EC598  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EC59C  7C 08 02 A6 */	mflr r0
/* 805EC5A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EC5A4  39 61 00 20 */	addi r11, r1, 0x20
/* 805EC5A8  4B AA E9 29 */	bl func_8009AED0
/* 805EC5AC  7C 7C 1B 78 */	mr r28, r3
/* 805EC5B0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805EC5B4  7C 9D 23 78 */	mr r29, r4
/* 805EC5B8  80 A3 09 28 */	lwz r5, 0x928(r3)
/* 805EC5BC  83 E3 09 AC */	lwz r31, 0x9ac(r3)
/* 805EC5C0  54 A0 04 63 */	rlwinm. r0, r5, 0, 0x11, 0x11
/* 805EC5C4  41 82 00 24 */	beq lbl_805EC5E8
/* 805EC5C8  81 83 09 4C */	lwz r12, 0x94c(r3)
/* 805EC5CC  7F A3 EB 78 */	mr r3, r29
/* 805EC5D0  38 80 00 04 */	li r4, 4
/* 805EC5D4  7D 89 03 A6 */	mtctr r12
/* 805EC5D8  4E 80 04 21 */	bctrl 
/* 805EC5DC  38 60 00 02 */	li r3, 2
/* 805EC5E0  48 04 17 25 */	bl sAdo_SysTrgStart
/* 805EC5E4  48 00 01 B4 */	b lbl_805EC798
lbl_805EC5E8:
/* 805EC5E8  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 805EC5EC  2C 04 00 06 */	cmpwi r4, 6
/* 805EC5F0  40 80 00 0C */	bge lbl_805EC5FC
/* 805EC5F4  54 A0 04 E7 */	rlwinm. r0, r5, 0, 0x13, 0x13
/* 805EC5F8  41 82 00 A0 */	beq lbl_805EC698
lbl_805EC5FC:
/* 805EC5FC  54 A0 04 21 */	rlwinm. r0, r5, 0, 0x10, 0x10
/* 805EC600  40 82 00 0C */	bne lbl_805EC60C
/* 805EC604  54 A0 04 E7 */	rlwinm. r0, r5, 0, 0x13, 0x13
/* 805EC608  41 82 00 70 */	beq lbl_805EC678
lbl_805EC60C:
/* 805EC60C  80 1F 00 08 */	lwz r0, 8(r31)
/* 805EC610  28 00 00 00 */	cmplwi r0, 0
/* 805EC614  41 82 00 40 */	beq lbl_805EC654
/* 805EC618  38 60 21 01 */	li r3, 0x2101
/* 805EC61C  38 80 00 07 */	li r4, 7
/* 805EC620  38 A0 00 00 */	li r5, 0
/* 805EC624  38 C0 00 01 */	li r6, 1
/* 805EC628  4B DE D2 BD */	bl mPlib_request_main_give_from_submenu
/* 805EC62C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805EC630  80 1F 00 04 */	lwz r0, 4(r31)
/* 805EC634  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805EC638  7F E3 FB 78 */	mr r3, r31
/* 805EC63C  3F C4 00 02 */	addis r30, r4, 2
/* 805EC640  80 9E 61 3C */	lwz r4, 0x613c(r30)
/* 805EC644  90 04 00 90 */	stw r0, 0x90(r4)
/* 805EC648  4B FF FE 21 */	bl func_805EC468
/* 805EC64C  80 9E 61 3C */	lwz r4, 0x613c(r30)
/* 805EC650  90 64 00 8C */	stw r3, 0x8c(r4)
lbl_805EC654:
/* 805EC654  80 BC 00 2C */	lwz r5, 0x2c(r28)
/* 805EC658  7F A3 EB 78 */	mr r3, r29
/* 805EC65C  38 80 00 04 */	li r4, 4
/* 805EC660  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805EC664  7D 89 03 A6 */	mtctr r12
/* 805EC668  4E 80 04 21 */	bctrl 
/* 805EC66C  38 60 00 02 */	li r3, 2
/* 805EC670  48 04 16 95 */	bl sAdo_SysTrgStart
/* 805EC674  48 00 01 24 */	b lbl_805EC798
lbl_805EC678:
/* 805EC678  70 A0 00 0A */	andi. r0, r5, 0xa
/* 805EC67C  41 82 01 1C */	beq lbl_805EC798
/* 805EC680  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 805EC684  38 60 00 01 */	li r3, 1
/* 805EC688  38 04 FF FF */	addi r0, r4, -1
/* 805EC68C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805EC690  48 04 16 75 */	bl sAdo_SysTrgStart
/* 805EC694  48 00 01 04 */	b lbl_805EC798
lbl_805EC698:
/* 805EC698  2C 04 00 00 */	cmpwi r4, 0
/* 805EC69C  41 82 00 20 */	beq lbl_805EC6BC
/* 805EC6A0  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 805EC6A4  41 82 00 18 */	beq lbl_805EC6BC
/* 805EC6A8  38 04 FF FF */	addi r0, r4, -1
/* 805EC6AC  38 60 00 01 */	li r3, 1
/* 805EC6B0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805EC6B4  48 04 16 51 */	bl sAdo_SysTrgStart
/* 805EC6B8  48 00 00 E0 */	b lbl_805EC798
lbl_805EC6BC:
/* 805EC6BC  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 805EC6C0  41 82 00 1C */	beq lbl_805EC6DC
/* 805EC6C4  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 805EC6C8  38 60 00 01 */	li r3, 1
/* 805EC6CC  38 04 00 01 */	addi r0, r4, 1
/* 805EC6D0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805EC6D4  48 04 16 31 */	bl sAdo_SysTrgStart
/* 805EC6D8  48 00 00 C0 */	b lbl_805EC798
lbl_805EC6DC:
/* 805EC6DC  54 A0 07 3B */	rlwinm. r0, r5, 0, 0x1c, 0x1d
/* 805EC6E0  41 82 00 B8 */	beq lbl_805EC798
/* 805EC6E4  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 805EC6E8  83 DF 00 08 */	lwz r30, 8(r31)
/* 805EC6EC  41 82 00 40 */	beq lbl_805EC72C
/* 805EC6F0  3C 60 80 6D */	lis r3, step_money@ha /* 0x806CE3F8@ha */
/* 805EC6F4  54 80 10 3A */	slwi r0, r4, 2
/* 805EC6F8  38 63 E3 F8 */	addi r3, r3, step_money@l /* 0x806CE3F8@l */
/* 805EC6FC  7C 03 00 2E */	lwzx r0, r3, r0
/* 805EC700  7C 1E 00 40 */	cmplw r30, r0
/* 805EC704  40 80 00 20 */	bge lbl_805EC724
/* 805EC708  28 1E 00 00 */	cmplwi r30, 0
/* 805EC70C  40 82 00 10 */	bne lbl_805EC71C
/* 805EC710  38 60 10 03 */	li r3, 0x1003
/* 805EC714  48 04 15 F1 */	bl sAdo_SysTrgStart
/* 805EC718  48 00 00 80 */	b lbl_805EC798
lbl_805EC71C:
/* 805EC71C  3B C0 00 00 */	li r30, 0
/* 805EC720  48 00 00 44 */	b lbl_805EC764
lbl_805EC724:
/* 805EC724  7F C0 F0 50 */	subf r30, r0, r30
/* 805EC728  48 00 00 3C */	b lbl_805EC764
lbl_805EC72C:
/* 805EC72C  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 805EC730  7C 1E 28 40 */	cmplw r30, r5
/* 805EC734  40 82 00 10 */	bne lbl_805EC744
/* 805EC738  38 60 10 03 */	li r3, 0x1003
/* 805EC73C  48 04 15 C9 */	bl sAdo_SysTrgStart
/* 805EC740  48 00 00 58 */	b lbl_805EC798
lbl_805EC744:
/* 805EC744  3C 60 80 6D */	lis r3, step_money@ha /* 0x806CE3F8@ha */
/* 805EC748  54 80 10 3A */	slwi r0, r4, 2
/* 805EC74C  38 63 E3 F8 */	addi r3, r3, step_money@l /* 0x806CE3F8@l */
/* 805EC750  7C 03 00 2E */	lwzx r0, r3, r0
/* 805EC754  7F DE 02 14 */	add r30, r30, r0
/* 805EC758  7C 1E 28 40 */	cmplw r30, r5
/* 805EC75C  40 81 00 08 */	ble lbl_805EC764
/* 805EC760  7C BE 2B 78 */	mr r30, r5
lbl_805EC764:
/* 805EC764  38 60 04 26 */	li r3, 0x426
/* 805EC768  48 04 15 9D */	bl sAdo_SysTrgStart
/* 805EC76C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 805EC770  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805EC774  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805EC778  7C 1E 00 50 */	subf r0, r30, r0
/* 805EC77C  90 1F 00 00 */	stw r0, 0(r31)
/* 805EC780  3C 63 00 02 */	addis r3, r3, 2
/* 805EC784  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805EC788  80 03 00 90 */	lwz r0, 0x90(r3)
/* 805EC78C  7C 1E 00 50 */	subf r0, r30, r0
/* 805EC790  90 1F 00 04 */	stw r0, 4(r31)
/* 805EC794  93 DF 00 08 */	stw r30, 8(r31)
lbl_805EC798:
/* 805EC798  39 61 00 20 */	addi r11, r1, 0x20
/* 805EC79C  4B AA E7 81 */	bl func_8009AF1C
/* 805EC7A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EC7A4  7C 08 03 A6 */	mtlr r0
/* 805EC7A8  38 21 00 20 */	addi r1, r1, 0x20
/* 805EC7AC  4E 80 00 20 */	blr 
