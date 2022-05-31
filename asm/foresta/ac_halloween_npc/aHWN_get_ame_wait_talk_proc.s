lbl_80527BA4:
/* 80527BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80527BA8  7C 08 02 A6 */	mflr r0
/* 80527BAC  38 80 00 01 */	li r4, 1
/* 80527BB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80527BB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80527BB8  7C 7F 1B 78 */	mr r31, r3
/* 80527BBC  38 60 00 04 */	li r3, 4
/* 80527BC0  4B E7 08 BD */	bl mDemo_Get_OrderValue
/* 80527BC4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80527BC8  2C 00 00 03 */	cmpwi r0, 3
/* 80527BCC  40 82 00 34 */	bne lbl_80527C00
/* 80527BD0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80527BD4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80527BD8  3C 63 00 02 */	addis r3, r3, 2
/* 80527BDC  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 80527BE0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80527BE4  28 00 00 00 */	cmplwi r0, 0
/* 80527BE8  41 82 00 18 */	beq lbl_80527C00
/* 80527BEC  4B E9 7A BD */	bl func_803BF6A8
/* 80527BF0  4B E9 91 51 */	bl mMsg_Set_LockContinue
/* 80527BF4  7F E3 FB 78 */	mr r3, r31
/* 80527BF8  38 80 00 0B */	li r4, 0xb
/* 80527BFC  48 00 00 F9 */	bl aHWN_change_talk_proc
lbl_80527C00:
/* 80527C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80527C04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80527C08  7C 08 03 A6 */	mtlr r0
/* 80527C0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80527C10  4E 80 00 20 */	blr 
