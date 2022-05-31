lbl_803A2FDC:
/* 803A2FDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A2FE0  7C 08 02 A6 */	mflr r0
/* 803A2FE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A2FE8  39 61 00 20 */	addi r11, r1, 0x20
/* 803A2FEC  4B CF 7E E5 */	bl func_8009AED0
/* 803A2FF0  3C C0 80 65 */	lis r6, flower_pal_idx_table@ha /* 0x806537E8@ha */
/* 803A2FF4  3C A0 80 75 */	lis r5, mFM_obj_a_01_flower_pal@ha /* 0x8074B740@ha */
/* 803A2FF8  54 9F 10 3A */	slwi r31, r4, 2
/* 803A2FFC  7C 7E 1B 78 */	mr r30, r3
/* 803A3000  38 66 37 E8 */	addi r3, r6, flower_pal_idx_table@l /* 0x806537E8@l */
/* 803A3004  38 05 B7 40 */	addi r0, r5, mFM_obj_a_01_flower_pal@l /* 0x8074B740@l */
/* 803A3008  7F 83 F8 2E */	lwzx r28, r3, r31
/* 803A300C  38 A0 00 20 */	li r5, 0x20
/* 803A3010  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 803A3014  57 9D 28 34 */	slwi r29, r28, 5
/* 803A3018  7C 60 EA 14 */	add r3, r0, r29
/* 803A301C  4B CB A0 01 */	bl func_8005D01C
/* 803A3020  38 1C 00 09 */	addi r0, r28, 9
/* 803A3024  3C 60 80 75 */	lis r3, mFM_obj_a_01_flower_pal@ha /* 0x8074B740@ha */
/* 803A3028  54 06 28 34 */	slwi r6, r0, 5
/* 803A302C  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 803A3030  38 03 B7 40 */	addi r0, r3, mFM_obj_a_01_flower_pal@l /* 0x8074B740@l */
/* 803A3034  38 A0 00 20 */	li r5, 0x20
/* 803A3038  7C 60 32 14 */	add r3, r0, r6
/* 803A303C  4B CB 9F E1 */	bl func_8005D01C
/* 803A3040  38 1C 00 12 */	addi r0, r28, 0x12
/* 803A3044  3C 60 80 75 */	lis r3, mFM_obj_a_01_flower_pal@ha /* 0x8074B740@ha */
/* 803A3048  54 06 28 34 */	slwi r6, r0, 5
/* 803A304C  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 803A3050  38 03 B7 40 */	addi r0, r3, mFM_obj_a_01_flower_pal@l /* 0x8074B740@l */
/* 803A3054  38 A0 00 20 */	li r5, 0x20
/* 803A3058  7C 60 32 14 */	add r3, r0, r6
/* 803A305C  4B CB 9F C1 */	bl func_8005D01C
/* 803A3060  3C 60 80 75 */	lis r3, mFM_obj_01_zassou_pal@ha /* 0x8074BC60@ha */
/* 803A3064  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 803A3068  38 03 BC 60 */	addi r0, r3, mFM_obj_01_zassou_pal@l /* 0x8074BC60@l */
/* 803A306C  38 A0 00 20 */	li r5, 0x20
/* 803A3070  7C 60 EA 14 */	add r3, r0, r29
/* 803A3074  4B CB 9F A9 */	bl func_8005D01C
/* 803A3078  3C 80 80 65 */	lis r4, tree_pal_idx_table@ha /* 0x806537A0@ha */
/* 803A307C  3C 60 80 76 */	lis r3, mFM_obj_tree_01_pal@ha /* 0x8075F3E0@ha */
/* 803A3080  3B A4 37 A0 */	addi r29, r4, tree_pal_idx_table@l /* 0x806537A0@l */
/* 803A3084  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 803A3088  7C DD F8 2E */	lwzx r6, r29, r31
/* 803A308C  38 03 F3 E0 */	addi r0, r3, mFM_obj_tree_01_pal@l /* 0x8075F3E0@l */
/* 803A3090  38 A0 00 20 */	li r5, 0x20
/* 803A3094  54 C3 28 34 */	slwi r3, r6, 5
/* 803A3098  7C 60 1A 14 */	add r3, r0, r3
/* 803A309C  4B CB 9F 81 */	bl func_8005D01C
/* 803A30A0  7C BD F8 2E */	lwzx r5, r29, r31
/* 803A30A4  3C 60 80 76 */	lis r3, mFM_obj_tree_01_pal_dol@ha /* 0x8075F5A0@ha */
/* 803A30A8  38 03 F5 A0 */	addi r0, r3, mFM_obj_tree_01_pal_dol@l /* 0x8075F5A0@l */
/* 803A30AC  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 803A30B0  54 A3 28 34 */	slwi r3, r5, 5
/* 803A30B4  38 A0 00 20 */	li r5, 0x20
/* 803A30B8  7C 60 1A 14 */	add r3, r0, r3
/* 803A30BC  4B CB 9F 61 */	bl func_8005D01C
/* 803A30C0  7C BD F8 2E */	lwzx r5, r29, r31
/* 803A30C4  3C 60 80 76 */	lis r3, mFM_obj_palm_01_pal@ha /* 0x8075F220@ha */
/* 803A30C8  38 03 F2 20 */	addi r0, r3, mFM_obj_palm_01_pal@l /* 0x8075F220@l */
/* 803A30CC  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 803A30D0  54 A3 28 34 */	slwi r3, r5, 5
/* 803A30D4  38 A0 00 20 */	li r5, 0x20
/* 803A30D8  7C 60 1A 14 */	add r3, r0, r3
/* 803A30DC  4B CB 9F 41 */	bl func_8005D01C
/* 803A30E0  7C BD F8 2E */	lwzx r5, r29, r31
/* 803A30E4  3C 60 80 75 */	lis r3, mFM_obj_gold_01_pal_dol@ha /* 0x8074BAA0@ha */
/* 803A30E8  38 03 BA A0 */	addi r0, r3, mFM_obj_gold_01_pal_dol@l /* 0x8074BAA0@l */
/* 803A30EC  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 803A30F0  54 A3 28 34 */	slwi r3, r5, 5
/* 803A30F4  38 A0 00 20 */	li r5, 0x20
/* 803A30F8  7C 60 1A 14 */	add r3, r0, r3
/* 803A30FC  4B CB 9F 21 */	bl func_8005D01C
/* 803A3100  39 61 00 20 */	addi r11, r1, 0x20
/* 803A3104  4B CF 7E 19 */	bl func_8009AF1C
/* 803A3108  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A310C  7C 08 03 A6 */	mtlr r0
/* 803A3110  38 21 00 20 */	addi r1, r1, 0x20
/* 803A3114  4E 80 00 20 */	blr 
