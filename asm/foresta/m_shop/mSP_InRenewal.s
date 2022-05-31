lbl_803EA678:
/* 803EA678  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EA67C  7C 08 02 A6 */	mflr r0
/* 803EA680  3C 60 20 00 */	lis r3, 0x2000
/* 803EA684  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EA688  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803EA68C  4B FB 03 8D */	bl mEv_CheckEvent
/* 803EA690  2C 03 00 01 */	cmpwi r3, 1
/* 803EA694  40 82 00 64 */	bne lbl_803EA6F8
/* 803EA698  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EA69C  38 61 00 08 */	addi r3, r1, 8
/* 803EA6A0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803EA6A4  38 80 00 01 */	li r4, 1
/* 803EA6A8  3C C5 00 02 */	addis r6, r5, 2
/* 803EA6AC  80 A6 04 74 */	lwz r5, 0x474(r6)
/* 803EA6B0  3B E6 61 20 */	addi r31, r6, 0x6120
/* 803EA6B4  80 06 04 78 */	lwz r0, 0x478(r6)
/* 803EA6B8  90 A1 00 08 */	stw r5, 8(r1)
/* 803EA6BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 803EA6C0  48 01 C8 FD */	bl lbRTC_Sub_DD
/* 803EA6C4  7F E4 FB 78 */	mr r4, r31
/* 803EA6C8  38 61 00 08 */	addi r3, r1, 8
/* 803EA6CC  48 01 C2 49 */	bl lbRTC_IsOverTime
/* 803EA6D0  2C 03 00 01 */	cmpwi r3, 1
/* 803EA6D4  41 82 00 1C */	beq lbl_803EA6F0
/* 803EA6D8  7F E3 FB 78 */	mr r3, r31
/* 803EA6DC  38 81 00 08 */	addi r4, r1, 8
/* 803EA6E0  38 A0 00 70 */	li r5, 0x70
/* 803EA6E4  48 01 C1 55 */	bl lbRTC_IsEqualTime
/* 803EA6E8  2C 03 00 00 */	cmpwi r3, 0
/* 803EA6EC  41 82 00 0C */	beq lbl_803EA6F8
lbl_803EA6F0:
/* 803EA6F0  38 60 00 01 */	li r3, 1
/* 803EA6F4  48 00 00 08 */	b lbl_803EA6FC
lbl_803EA6F8:
/* 803EA6F8  38 60 00 00 */	li r3, 0
lbl_803EA6FC:
/* 803EA6FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EA700  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803EA704  7C 08 03 A6 */	mtlr r0
/* 803EA708  38 21 00 20 */	addi r1, r1, 0x20
/* 803EA70C  4E 80 00 20 */	blr 
