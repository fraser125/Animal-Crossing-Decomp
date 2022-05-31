lbl_8056BF08:
/* 8056BF08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8056BF0C  7C 08 02 A6 */	mflr r0
/* 8056BF10  90 01 00 34 */	stw r0, 0x34(r1)
/* 8056BF14  39 61 00 30 */	addi r11, r1, 0x30
/* 8056BF18  4B B2 EF B5 */	bl func_8009AECC
/* 8056BF1C  7C 7F 1B 78 */	mr r31, r3
/* 8056BF20  7C 9B 23 78 */	mr r27, r4
/* 8056BF24  4B E5 37 85 */	bl func_803BF6A8
/* 8056BF28  7C 7E 1B 78 */	mr r30, r3
/* 8056BF2C  4B E5 4D 6D */	bl mMsg_Check_MainNormalContinue
/* 8056BF30  2C 03 00 01 */	cmpwi r3, 1
/* 8056BF34  40 82 01 24 */	bne lbl_8056C058
/* 8056BF38  4B E1 76 09 */	bl func_80383540
/* 8056BF3C  4B E1 7C 31 */	bl mChoice_Get_ChoseNum
/* 8056BF40  2C 03 00 01 */	cmpwi r3, 1
/* 8056BF44  41 82 01 00 */	beq lbl_8056C044
/* 8056BF48  40 80 00 FC */	bge lbl_8056C044
/* 8056BF4C  2C 03 00 00 */	cmpwi r3, 0
/* 8056BF50  40 80 00 08 */	bge lbl_8056BF58
/* 8056BF54  48 00 00 F0 */	b lbl_8056C044
lbl_8056BF58:
/* 8056BF58  A8 9F 09 A2 */	lha r4, 0x9a2(r31)
/* 8056BF5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056BF60  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8056BF64  54 83 08 3C */	slwi r3, r4, 1
/* 8056BF68  7C 60 1A 14 */	add r3, r0, r3
/* 8056BF6C  3F A3 00 02 */	addis r29, r3, 2
/* 8056BF70  A4 7D 0E D0 */	lhzu r3, 0xed0(r29)
/* 8056BF74  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8056BF78  2C 00 00 02 */	cmpwi r0, 2
/* 8056BF7C  40 82 00 20 */	bne lbl_8056BF9C
/* 8056BF80  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 8056BF84  2C 00 00 0C */	cmpwi r0, 0xc
/* 8056BF88  40 82 00 14 */	bne lbl_8056BF9C
/* 8056BF8C  7F A3 EB 78 */	mr r3, r29
/* 8056BF90  4B E6 FB BD */	bl mPlib_Get_space_putin_item_forTICKET
/* 8056BF94  7C 7C 1B 78 */	mr r28, r3
/* 8056BF98  48 00 00 0C */	b lbl_8056BFA4
lbl_8056BF9C:
/* 8056BF9C  4B E6 FB 79 */	bl mPlib_Get_space_putin_item
/* 8056BFA0  7C 7C 1B 78 */	mr r28, r3
lbl_8056BFA4:
/* 8056BFA4  2C 1C FF FF */	cmpwi r28, -1
/* 8056BFA8  40 82 00 14 */	bne lbl_8056BFBC
/* 8056BFAC  7F C3 F3 78 */	mr r3, r30
/* 8056BFB0  38 80 07 81 */	li r4, 0x781
/* 8056BFB4  4B E5 40 11 */	bl mMsg_Set_continue_msg_num
/* 8056BFB8  48 00 00 8C */	b lbl_8056C044
lbl_8056BFBC:
/* 8056BFBC  7F 63 DB 78 */	mr r3, r27
/* 8056BFC0  4B E6 D6 81 */	bl get_player_actor_withoutCheck
/* 8056BFC4  3C A0 80 6C */	lis r5, dummy_pos@ha /* 0x806BE8E8@ha */
/* 8056BFC8  84 E5 E8 E8 */	lwzu r7, dummy_pos@l(r5)  /* 0x806BE8E8@l */
/* 8056BFCC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 8056BFD0  7C 7E 1B 78 */	mr r30, r3
/* 8056BFD4  80 C5 00 04 */	lwz r6, 4(r5)
/* 8056BFD8  38 64 FF FF */	addi r3, r4, 0xFFFF /* 0x0000FFFF@l */
/* 8056BFDC  80 05 00 08 */	lwz r0, 8(r5)
/* 8056BFE0  38 81 00 08 */	addi r4, r1, 8
/* 8056BFE4  90 E1 00 08 */	stw r7, 8(r1)
/* 8056BFE8  38 A0 00 01 */	li r5, 1
/* 8056BFEC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8056BFF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8056BFF4  4B E3 B8 3D */	bl mFI_SetFG_common
/* 8056BFF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056BFFC  A0 BD 00 00 */	lhz r5, 0(r29)
/* 8056C000  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056C004  7F 84 E3 78 */	mr r4, r28
/* 8056C008  3C 63 00 02 */	addis r3, r3, 2
/* 8056C00C  38 C0 00 00 */	li r6, 0
/* 8056C010  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8056C014  4B E7 4E 15 */	bl mPr_SetPossessionItem
/* 8056C018  A8 1F 09 A2 */	lha r0, 0x9a2(r31)
/* 8056C01C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056C020  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056C024  38 A0 00 00 */	li r5, 0
/* 8056C028  3C 63 00 02 */	addis r3, r3, 2
/* 8056C02C  54 00 08 3C */	slwi r0, r0, 1
/* 8056C030  7C 63 02 14 */	add r3, r3, r0
/* 8056C034  38 9E 00 28 */	addi r4, r30, 0x28
/* 8056C038  B0 A3 0E D0 */	sth r5, 0xed0(r3)
/* 8056C03C  38 60 00 40 */	li r3, 0x40
/* 8056C040  48 0C 1F 69 */	bl sAdo_OngenTrgStart
lbl_8056C044:
/* 8056C044  38 00 FF FF */	li r0, -1
/* 8056C048  7F E3 FB 78 */	mr r3, r31
/* 8056C04C  B0 1F 09 A2 */	sth r0, 0x9a2(r31)
/* 8056C050  38 80 00 08 */	li r4, 8
/* 8056C054  48 00 00 AD */	bl aPOL2_setupAction
lbl_8056C058:
/* 8056C058  39 61 00 30 */	addi r11, r1, 0x30
/* 8056C05C  4B B2 EE BD */	bl func_8009AF18
/* 8056C060  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8056C064  7C 08 03 A6 */	mtlr r0
/* 8056C068  38 21 00 30 */	addi r1, r1, 0x30
/* 8056C06C  4E 80 00 20 */	blr 
