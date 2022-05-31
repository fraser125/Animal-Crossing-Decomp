lbl_803B6A58:
/* 803B6A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B6A5C  7C 08 02 A6 */	mflr r0
/* 803B6A60  3C A0 81 17 */	lis r5, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B6A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B6A68  38 05 9B A0 */	addi r0, r5, data_81169BA0@l /* 0x81169BA0@l */
/* 803B6A6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B6A70  7C 9F 23 78 */	mr r31, r4
/* 803B6A74  38 80 00 A4 */	li r4, 0xa4
/* 803B6A78  93 C1 00 08 */	stw r30, 8(r1)
/* 803B6A7C  7C 7E 1B 78 */	mr r30, r3
/* 803B6A80  7C 03 03 78 */	mr r3, r0
/* 803B6A84  4B CA 65 E5 */	bl bzero
/* 803B6A88  38 60 00 0A */	li r3, 0xa
/* 803B6A8C  48 03 08 05 */	bl mRmTp_IndexLightSwitchOFF
/* 803B6A90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B6A94  3C A0 80 64 */	lis r5, lit_545@ha /* 0x8064244C@ha */
/* 803B6A98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B6A9C  3C 80 81 17 */	lis r4, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B6AA0  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 803B6AA4  38 84 9B A0 */	addi r4, r4, data_81169BA0@l /* 0x81169BA0@l */
/* 803B6AA8  C0 05 24 4C */	lfs f0, lit_545@l(r5)  /* 0x8064244C@l */
/* 803B6AAC  38 00 00 00 */	li r0, 0
/* 803B6AB0  2C 06 00 26 */	cmpwi r6, 0x26
/* 803B6AB4  90 04 00 38 */	stw r0, 0x38(r4)
/* 803B6AB8  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 803B6ABC  D0 04 00 30 */	stfs f0, 0x30(r4)
/* 803B6AC0  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 803B6AC4  40 82 00 14 */	bne lbl_803B6AD8
/* 803B6AC8  3C 60 80 64 */	lis r3, lit_936@ha /* 0x8064249C@ha */
/* 803B6ACC  C0 03 24 9C */	lfs f0, lit_936@l(r3)  /* 0x8064249C@l */
/* 803B6AD0  D0 04 00 9C */	stfs f0, 0x9c(r4)
/* 803B6AD4  48 00 00 10 */	b lbl_803B6AE4
lbl_803B6AD8:
/* 803B6AD8  3C 60 80 64 */	lis r3, lit_589@ha /* 0x80642454@ha */
/* 803B6ADC  C0 03 24 54 */	lfs f0, lit_589@l(r3)  /* 0x80642454@l */
/* 803B6AE0  D0 04 00 9C */	stfs f0, 0x9c(r4)
lbl_803B6AE4:
/* 803B6AE4  2C 06 00 26 */	cmpwi r6, 0x26
/* 803B6AE8  40 82 00 18 */	bne lbl_803B6B00
/* 803B6AEC  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B6AF0  38 00 00 64 */	li r0, 0x64
/* 803B6AF4  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B6AF8  98 03 00 A0 */	stb r0, 0xa0(r3)
/* 803B6AFC  48 00 00 14 */	b lbl_803B6B10
lbl_803B6B00:
/* 803B6B00  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B6B04  38 00 00 96 */	li r0, 0x96
/* 803B6B08  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B6B0C  98 03 00 A0 */	stb r0, 0xa0(r3)
lbl_803B6B10:
/* 803B6B10  3C 80 80 64 */	lis r4, lit_544@ha /* 0x80642448@ha */
/* 803B6B14  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B6B18  C0 04 24 48 */	lfs f0, lit_544@l(r4)  /* 0x80642448@l */
/* 803B6B1C  38 83 9B A0 */	addi r4, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B6B20  2C 06 00 34 */	cmpwi r6, 0x34
/* 803B6B24  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 803B6B28  40 80 00 20 */	bge lbl_803B6B48
/* 803B6B2C  2C 06 00 32 */	cmpwi r6, 0x32
/* 803B6B30  40 80 00 08 */	bge lbl_803B6B38
/* 803B6B34  48 00 00 14 */	b lbl_803B6B48
lbl_803B6B38:
/* 803B6B38  3C 60 80 64 */	lis r3, lit_937@ha /* 0x806424A0@ha */
/* 803B6B3C  C0 03 24 A0 */	lfs f0, lit_937@l(r3)  /* 0x806424A0@l */
/* 803B6B40  D0 04 00 90 */	stfs f0, 0x90(r4)
/* 803B6B44  48 00 00 18 */	b lbl_803B6B5C
lbl_803B6B48:
/* 803B6B48  3C 80 80 64 */	lis r4, lit_937@ha /* 0x806424A0@ha */
/* 803B6B4C  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B6B50  C0 04 24 A0 */	lfs f0, lit_937@l(r4)  /* 0x806424A0@l */
/* 803B6B54  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B6B58  D0 03 00 90 */	stfs f0, 0x90(r3)
lbl_803B6B5C:
/* 803B6B5C  3C 60 80 64 */	lis r3, lit_545@ha /* 0x8064244C@ha */
/* 803B6B60  3C 80 81 17 */	lis r4, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B6B64  38 A3 24 4C */	addi r5, r3, lit_545@l /* 0x8064244C@l */
/* 803B6B68  7F E3 FB 78 */	mr r3, r31
/* 803B6B6C  C0 05 00 00 */	lfs f0, 0(r5)
/* 803B6B70  38 A4 9B A0 */	addi r5, r4, data_81169BA0@l /* 0x81169BA0@l */
/* 803B6B74  38 80 00 D0 */	li r4, 0xd0
/* 803B6B78  D0 05 00 94 */	stfs f0, 0x94(r5)
/* 803B6B7C  4B CA 64 ED */	bl bzero
/* 803B6B80  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 803B6B84  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B6B88  80 A4 61 38 */	lwz r5, debug_mode@l(r4)  /* 0x81166138@l */
/* 803B6B8C  38 C0 00 64 */	li r6, 0x64
/* 803B6B90  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B6B94  38 00 00 00 */	li r0, 0
/* 803B6B98  B0 C5 19 0C */	sth r6, 0x190c(r5)
/* 803B6B9C  3C 83 00 02 */	addis r4, r3, 2
/* 803B6BA0  7F E3 FB 78 */	mr r3, r31
/* 803B6BA4  98 04 61 4C */	stb r0, 0x614c(r4)
/* 803B6BA8  48 00 06 6D */	bl mEnv_set_time
/* 803B6BAC  38 00 00 FF */	li r0, 0xff
/* 803B6BB0  7F C3 F3 78 */	mr r3, r30
/* 803B6BB4  98 1F 00 C5 */	stb r0, 0xc5(r31)
/* 803B6BB8  7F E4 FB 78 */	mr r4, r31
/* 803B6BBC  4B FF FD 25 */	bl mEnv_RoomTypeLightSet
/* 803B6BC0  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 803B6BC4  7F E3 FB 78 */	mr r3, r31
/* 803B6BC8  38 84 B5 4C */	addi r4, r4, none_proc1@l /* 0x803BB54C@l */
/* 803B6BCC  38 A0 00 00 */	li r5, 0
/* 803B6BD0  4B FF F6 39 */	bl mEnv_regist_nature
/* 803B6BD4  38 60 00 00 */	li r3, 0
/* 803B6BD8  48 00 2A 61 */	bl mEnv_MakeWindowLightAlpha
/* 803B6BDC  48 00 35 B9 */	bl mEnv_InitWind
/* 803B6BE0  48 00 2A 11 */	bl mEnv_Pointlight_on_check
/* 803B6BE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803B6BE8  38 80 00 03 */	li r4, 3
/* 803B6BEC  41 82 00 08 */	beq lbl_803B6BF4
/* 803B6BF0  38 80 00 02 */	li r4, 2
lbl_803B6BF4:
/* 803B6BF4  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B6BF8  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B6BFC  90 83 00 8C */	stw r4, 0x8c(r3)
/* 803B6C00  4B FF FD 25 */	bl mEnv_rainbow_check_set
/* 803B6C04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B6C08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B6C0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B6C10  7C 08 03 A6 */	mtlr r0
/* 803B6C14  38 21 00 10 */	addi r1, r1, 0x10
/* 803B6C18  4E 80 00 20 */	blr 
