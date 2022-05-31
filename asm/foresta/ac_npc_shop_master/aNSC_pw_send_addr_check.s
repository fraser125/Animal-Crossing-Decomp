lbl_8057AF98:
/* 8057AF98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057AF9C  7C 08 02 A6 */	mflr r0
/* 8057AFA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057AFA4  39 61 00 20 */	addi r11, r1, 0x20
/* 8057AFA8  4B B1 FF 29 */	bl func_8009AED0
/* 8057AFAC  7C 7C 1B 78 */	mr r28, r3
/* 8057AFB0  7C 9D 23 78 */	mr r29, r4
/* 8057AFB4  4B E4 46 F5 */	bl func_803BF6A8
/* 8057AFB8  7C 60 1B 78 */	mr r0, r3
/* 8057AFBC  38 60 01 2F */	li r3, 0x12f
/* 8057AFC0  7C 1E 03 78 */	mr r30, r0
/* 8057AFC4  4B FF D2 B9 */	bl aNSC_get_msg_no
/* 8057AFC8  7C 7F 1B 78 */	mr r31, r3
/* 8057AFCC  7F C3 F3 78 */	mr r3, r30
/* 8057AFD0  4B E4 4F FD */	bl mMsg_Get_msg_num
/* 8057AFD4  7C 03 F8 00 */	cmpw r3, r31
/* 8057AFD8  40 82 00 84 */	bne lbl_8057B05C
/* 8057AFDC  7F C3 F3 78 */	mr r3, r30
/* 8057AFE0  4B E4 5C B9 */	bl mMsg_Check_MainNormalContinue
/* 8057AFE4  2C 03 00 00 */	cmpwi r3, 0
/* 8057AFE8  41 82 00 74 */	beq lbl_8057B05C
/* 8057AFEC  3B E0 FF FF */	li r31, -1
/* 8057AFF0  4B E0 85 51 */	bl func_80383540
/* 8057AFF4  4B E0 8B 79 */	bl mChoice_Get_ChoseNum
/* 8057AFF8  2C 03 00 01 */	cmpwi r3, 1
/* 8057AFFC  41 82 00 28 */	beq lbl_8057B024
/* 8057B000  40 80 00 10 */	bge lbl_8057B010
/* 8057B004  2C 03 00 00 */	cmpwi r3, 0
/* 8057B008  40 80 00 14 */	bge lbl_8057B01C
/* 8057B00C  48 00 00 24 */	b lbl_8057B030
lbl_8057B010:
/* 8057B010  2C 03 00 03 */	cmpwi r3, 3
/* 8057B014  40 80 00 1C */	bge lbl_8057B030
/* 8057B018  48 00 00 14 */	b lbl_8057B02C
lbl_8057B01C:
/* 8057B01C  3B E0 00 00 */	li r31, 0
/* 8057B020  48 00 00 10 */	b lbl_8057B030
lbl_8057B024:
/* 8057B024  3B E0 00 01 */	li r31, 1
/* 8057B028  48 00 00 08 */	b lbl_8057B030
lbl_8057B02C:
/* 8057B02C  3B E0 00 02 */	li r31, 2
lbl_8057B030:
/* 8057B030  2C 1F FF FF */	cmpwi r31, -1
/* 8057B034  41 82 00 28 */	beq lbl_8057B05C
/* 8057B038  7F C3 F3 78 */	mr r3, r30
/* 8057B03C  4B E4 5C ED */	bl mMsg_Set_ForceNext
/* 8057B040  3C 60 80 6C */	lis r3, next_act_idx_1772@ha /* 0x806C03C0@ha */
/* 8057B044  57 E0 10 3A */	slwi r0, r31, 2
/* 8057B048  38 83 03 C0 */	addi r4, r3, next_act_idx_1772@l /* 0x806C03C0@l */
/* 8057B04C  7F 83 E3 78 */	mr r3, r28
/* 8057B050  7C A4 00 2E */	lwzx r5, r4, r0
/* 8057B054  7F A4 EB 78 */	mr r4, r29
/* 8057B058  48 00 14 5D */	bl aNSC_setupAction
lbl_8057B05C:
/* 8057B05C  39 61 00 20 */	addi r11, r1, 0x20
/* 8057B060  4B B1 FE BD */	bl func_8009AF1C
/* 8057B064  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057B068  7C 08 03 A6 */	mtlr r0
/* 8057B06C  38 21 00 20 */	addi r1, r1, 0x20
/* 8057B070  4E 80 00 20 */	blr 
