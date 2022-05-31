lbl_804E080C:
/* 804E080C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E0810  7C 08 02 A6 */	mflr r0
/* 804E0814  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804E0818  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E081C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E0820  7C 9F 23 78 */	mr r31, r4
/* 804E0824  93 C1 00 08 */	stw r30, 8(r1)
/* 804E0828  7C 7E 1B 78 */	mr r30, r3
/* 804E082C  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 804E0830  80 63 00 14 */	lwz r3, 0x14(r3)
/* 804E0834  4B FF 78 E5 */	bl Player_actor_CheckScene_AbleOutItem
/* 804E0838  2C 03 00 00 */	cmpwi r3, 0
/* 804E083C  41 82 00 24 */	beq lbl_804E0860
/* 804E0840  80 1E 0F 30 */	lwz r0, 0xf30(r30)
/* 804E0844  28 00 00 00 */	cmplwi r0, 0
/* 804E0848  40 82 00 18 */	bne lbl_804E0860
/* 804E084C  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 804E0850  38 80 00 6F */	li r4, 0x6f
/* 804E0854  38 A0 00 05 */	li r5, 5
/* 804E0858  4B E9 54 89 */	bl Actor_info_name_search
/* 804E085C  90 7E 0F 30 */	stw r3, 0xf30(r30)
lbl_804E0860:
/* 804E0860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E0864  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E0868  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E086C  7C 08 03 A6 */	mtlr r0
/* 804E0870  38 21 00 10 */	addi r1, r1, 0x10
/* 804E0874  4E 80 00 20 */	blr 
