lbl_803996AC:
/* 803996AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803996B0  7C 08 02 A6 */	mflr r0
/* 803996B4  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803996B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803996BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803996C0  83 E3 52 F0 */	lwz r31, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 803996C4  48 02 5F E5 */	bl func_803BF6A8
/* 803996C8  48 02 61 11 */	bl mMsg_Check_main_hide
/* 803996CC  2C 03 00 00 */	cmpwi r3, 0
/* 803996D0  41 82 00 18 */	beq lbl_803996E8
/* 803996D4  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 803996D8  80 83 1C BC */	lwz r4, data_80641CBC@l(r3)  /* 0x80641CBC@l */
/* 803996DC  80 64 03 0C */	lwz r3, 0x30c(r4)
/* 803996E0  38 03 FF FF */	addi r0, r3, -1
/* 803996E4  90 04 03 0C */	stw r0, 0x30c(r4)
lbl_803996E8:
/* 803996E8  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 803996EC  80 83 1C BC */	lwz r4, data_80641CBC@l(r3)  /* 0x80641CBC@l */
/* 803996F0  80 04 03 0C */	lwz r0, 0x30c(r4)
/* 803996F4  2C 00 00 00 */	cmpwi r0, 0
/* 803996F8  40 81 00 10 */	ble lbl_80399708
/* 803996FC  80 04 00 DC */	lwz r0, 0xdc(r4)
/* 80399700  2C 00 00 09 */	cmpwi r0, 9
/* 80399704  40 82 00 5C */	bne lbl_80399760
lbl_80399708:
/* 80399708  7F E3 FB 78 */	mr r3, r31
/* 8039970C  38 84 03 10 */	addi r4, r4, 0x310
/* 80399710  38 A0 00 00 */	li r5, 0
/* 80399714  48 05 7A 95 */	bl goto_other_scene
/* 80399718  2C 03 00 00 */	cmpwi r3, 0
/* 8039971C  41 82 00 3C */	beq lbl_80399758
/* 80399720  3C 80 80 64 */	lis r4, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399724  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80399728  80 A4 1C BC */	lwz r5, data_80641CBC@l(r4)  /* 0x80641CBC@l */
/* 8039972C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80399730  38 00 00 0B */	li r0, 0xb
/* 80399734  88 85 03 20 */	lbz r4, 0x320(r5)
/* 80399738  3C 63 00 02 */	addis r3, r3, 2
/* 8039973C  98 9F 20 D1 */	stb r4, 0x20d1(r31)
/* 80399740  98 1F 20 D0 */	stb r0, 0x20d0(r31)
/* 80399744  88 05 03 20 */	lbz r0, 0x320(r5)
/* 80399748  98 03 61 4F */	stb r0, 0x614f(r3)
/* 8039974C  4B FE 34 0D */	bl mBGMForce_inform_end
/* 80399750  38 60 00 01 */	li r3, 1
/* 80399754  48 00 00 10 */	b lbl_80399764
lbl_80399758:
/* 80399758  38 60 00 00 */	li r3, 0
/* 8039975C  48 00 00 08 */	b lbl_80399764
lbl_80399760:
/* 80399760  38 60 00 00 */	li r3, 0
lbl_80399764:
/* 80399764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80399768  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039976C  7C 08 03 A6 */	mtlr r0
/* 80399770  38 21 00 10 */	addi r1, r1, 0x10
/* 80399774  4E 80 00 20 */	blr 