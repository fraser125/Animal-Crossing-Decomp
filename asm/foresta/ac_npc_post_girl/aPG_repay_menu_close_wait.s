lbl_8056CDD4:
/* 8056CDD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056CDD8  7C 08 02 A6 */	mflr r0
/* 8056CDDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056CDE0  39 61 00 20 */	addi r11, r1, 0x20
/* 8056CDE4  4B B2 E0 ED */	bl func_8009AED0
/* 8056CDE8  7C 9E 23 78 */	mr r30, r4
/* 8056CDEC  7C 7D 1B 78 */	mr r29, r3
/* 8056CDF0  88 04 1F 4E */	lbz r0, 0x1f4e(r4)
/* 8056CDF4  28 00 00 00 */	cmplwi r0, 0
/* 8056CDF8  40 82 00 A8 */	bne lbl_8056CEA0
/* 8056CDFC  3B 80 00 00 */	li r28, 0
/* 8056CE00  3B E0 00 00 */	li r31, 0
/* 8056CE04  4B FF F8 25 */	bl aPG_set_post_status
/* 8056CE08  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056CE0C  80 BD 09 A8 */	lwz r5, 0x9a8(r29)
/* 8056CE10  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8056CE14  3C 64 00 02 */	addis r3, r4, 2
/* 8056CE18  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8056CE1C  80 03 00 90 */	lwz r0, 0x90(r3)
/* 8056CE20  7C 05 00 40 */	cmplw r5, r0
/* 8056CE24  40 82 00 10 */	bne lbl_8056CE34
/* 8056CE28  3B 80 00 01 */	li r28, 1
/* 8056CE2C  3B E0 00 01 */	li r31, 1
/* 8056CE30  48 00 00 24 */	b lbl_8056CE54
lbl_8056CE34:
/* 8056CE34  88 1D 09 A4 */	lbz r0, 0x9a4(r29)
/* 8056CE38  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8056CE3C  41 82 00 0C */	beq lbl_8056CE48
/* 8056CE40  3B 80 00 02 */	li r28, 2
/* 8056CE44  48 00 00 10 */	b lbl_8056CE54
lbl_8056CE48:
/* 8056CE48  3C 64 00 03 */	addis r3, r4, 3
/* 8056CE4C  38 00 00 02 */	li r0, 2
/* 8056CE50  98 03 85 BF */	stb r0, -0x7a41(r3)
lbl_8056CE54:
/* 8056CE54  3C 60 80 6C */	lis r3, msg_no_667@ha /* 0x806BE990@ha */
/* 8056CE58  57 80 10 3A */	slwi r0, r28, 2
/* 8056CE5C  38 83 E9 90 */	addi r4, r3, msg_no_667@l /* 0x806BE990@l */
/* 8056CE60  7F A3 EB 78 */	mr r3, r29
/* 8056CE64  7C 84 00 2E */	lwzx r4, r4, r0
/* 8056CE68  4B FF F6 41 */	bl aPG_ChangeMsgData
/* 8056CE6C  4B E5 28 3D */	bl func_803BF6A8
/* 8056CE70  4B E5 3E B9 */	bl mMsg_Set_ForceNext
/* 8056CE74  38 00 00 0F */	li r0, 0xf
/* 8056CE78  3C 60 80 6C */	lis r3, next_act_idx_668@ha /* 0x806BE99C@ha */
/* 8056CE7C  90 1D 09 98 */	stw r0, 0x998(r29)
/* 8056CE80  57 E0 10 3A */	slwi r0, r31, 2
/* 8056CE84  38 A3 E9 9C */	addi r5, r3, next_act_idx_668@l /* 0x806BE99C@l */
/* 8056CE88  7F A3 EB 78 */	mr r3, r29
/* 8056CE8C  81 9D 09 A0 */	lwz r12, 0x9a0(r29)
/* 8056CE90  7F C4 F3 78 */	mr r4, r30
/* 8056CE94  7C A5 00 2E */	lwzx r5, r5, r0
/* 8056CE98  7D 89 03 A6 */	mtctr r12
/* 8056CE9C  4E 80 04 21 */	bctrl 
lbl_8056CEA0:
/* 8056CEA0  39 61 00 20 */	addi r11, r1, 0x20
/* 8056CEA4  4B B2 E0 79 */	bl func_8009AF1C
/* 8056CEA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056CEAC  7C 08 03 A6 */	mtlr r0
/* 8056CEB0  38 21 00 20 */	addi r1, r1, 0x20
/* 8056CEB4  4E 80 00 20 */	blr 
