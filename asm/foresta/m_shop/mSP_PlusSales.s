lbl_803E985C:
/* 803E985C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E9860  7C 08 02 A6 */	mflr r0
/* 803E9864  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9868  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E986C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E9870  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E9874  3F E4 00 02 */	addis r31, r4, 2
/* 803E9878  80 1F 04 68 */	lwz r0, 0x468(r31)
/* 803E987C  7C 00 1A 14 */	add r0, r0, r3
/* 803E9880  90 1F 04 68 */	stw r0, 0x468(r31)
/* 803E9884  48 00 00 E1 */	bl mSP_GetShopLevel
/* 803E9888  2C 03 00 00 */	cmpwi r3, 0
/* 803E988C  40 82 00 1C */	bne lbl_803E98A8
/* 803E9890  80 1F 04 68 */	lwz r0, 0x468(r31)
/* 803E9894  28 00 61 A8 */	cmplwi r0, 0x61a8
/* 803E9898  40 81 00 5C */	ble lbl_803E98F4
/* 803E989C  38 00 61 A8 */	li r0, 0x61a8
/* 803E98A0  90 1F 04 68 */	stw r0, 0x468(r31)
/* 803E98A4  48 00 00 50 */	b lbl_803E98F4
lbl_803E98A8:
/* 803E98A8  48 00 00 BD */	bl mSP_GetShopLevel
/* 803E98AC  2C 03 00 01 */	cmpwi r3, 1
/* 803E98B0  40 82 00 20 */	bne lbl_803E98D0
/* 803E98B4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00015F90@ha */
/* 803E98B8  80 9F 04 68 */	lwz r4, 0x468(r31)
/* 803E98BC  38 03 5F 90 */	addi r0, r3, 0x5F90 /* 0x00015F90@l */
/* 803E98C0  7C 04 00 40 */	cmplw r4, r0
/* 803E98C4  40 81 00 30 */	ble lbl_803E98F4
/* 803E98C8  90 1F 04 68 */	stw r0, 0x468(r31)
/* 803E98CC  48 00 00 28 */	b lbl_803E98F4
lbl_803E98D0:
/* 803E98D0  48 00 00 95 */	bl mSP_GetShopLevel
/* 803E98D4  2C 03 00 02 */	cmpwi r3, 2
/* 803E98D8  40 82 00 1C */	bne lbl_803E98F4
/* 803E98DC  3C 60 00 04 */	lis r3, 0x0004 /* 0x0003A980@ha */
/* 803E98E0  80 9F 04 68 */	lwz r4, 0x468(r31)
/* 803E98E4  38 03 A9 80 */	addi r0, r3, 0xA980 /* 0x0003A980@l */
/* 803E98E8  7C 04 00 40 */	cmplw r4, r0
/* 803E98EC  40 81 00 08 */	ble lbl_803E98F4
/* 803E98F0  90 1F 04 68 */	stw r0, 0x468(r31)
lbl_803E98F4:
/* 803E98F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E98F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E98FC  7C 08 03 A6 */	mtlr r0
/* 803E9900  38 21 00 10 */	addi r1, r1, 0x10
/* 803E9904  4E 80 00 20 */	blr 
