lbl_8045A61C:
/* 8045A61C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8045A620  7C 08 02 A6 */	mflr r0
/* 8045A624  90 01 00 34 */	stw r0, 0x34(r1)
/* 8045A628  39 61 00 30 */	addi r11, r1, 0x30
/* 8045A62C  4B C4 08 99 */	bl func_8009AEC4
/* 8045A630  3B 60 00 00 */	li r27, 0
/* 8045A634  3C A0 80 68 */	lis r5, group_insect_name@ha /* 0x80686FD4@ha */
/* 8045A638  93 63 2F 78 */	stw r27, 0x2f78(r3)
/* 8045A63C  7C 7E 1B 78 */	mr r30, r3
/* 8045A640  3C 60 80 68 */	lis r3, group_max_num@ha /* 0x80686F20@ha */
/* 8045A644  54 9F 10 3A */	slwi r31, r4, 2
/* 8045A648  93 7E 2F 7C */	stw r27, 0x2f7c(r30)
/* 8045A64C  3B 85 6F D4 */	addi r28, r5, group_insect_name@l /* 0x80686FD4@l */
/* 8045A650  3B A3 6F 20 */	addi r29, r3, group_max_num@l /* 0x80686F20@l */
/* 8045A654  3B 40 00 00 */	li r26, 0
/* 8045A658  48 00 00 54 */	b lbl_8045A6AC
lbl_8045A65C:
/* 8045A65C  7C 7C F8 2E */	lwzx r3, r28, r31
/* 8045A660  7C 03 D8 2E */	lwzx r0, r3, r27
/* 8045A664  7C 19 07 34 */	extsh r25, r0
/* 8045A668  7F 23 CB 78 */	mr r3, r25
/* 8045A66C  4B F6 CE 0D */	bl mMmd_InsectInfo
/* 8045A670  7C 64 07 35 */	extsh. r4, r3
/* 8045A674  41 82 00 30 */	beq lbl_8045A6A4
/* 8045A678  80 1E 2F 78 */	lwz r0, 0x2f78(r30)
/* 8045A67C  54 03 10 3A */	slwi r3, r0, 2
/* 8045A680  38 03 2F 80 */	addi r0, r3, 0x2f80
/* 8045A684  7F 3E 03 2E */	sthx r25, r30, r0
/* 8045A688  80 1E 2F 78 */	lwz r0, 0x2f78(r30)
/* 8045A68C  54 03 10 3A */	slwi r3, r0, 2
/* 8045A690  38 03 2F 82 */	addi r0, r3, 0x2f82
/* 8045A694  7C 9E 03 2E */	sthx r4, r30, r0
/* 8045A698  80 7E 2F 78 */	lwz r3, 0x2f78(r30)
/* 8045A69C  38 03 00 01 */	addi r0, r3, 1
/* 8045A6A0  90 1E 2F 78 */	stw r0, 0x2f78(r30)
lbl_8045A6A4:
/* 8045A6A4  3B 5A 00 01 */	addi r26, r26, 1
/* 8045A6A8  3B 7B 00 04 */	addi r27, r27, 4
lbl_8045A6AC:
/* 8045A6AC  7C 1D F8 2E */	lwzx r0, r29, r31
/* 8045A6B0  7C 1A 00 00 */	cmpw r26, r0
/* 8045A6B4  41 80 FF A8 */	blt lbl_8045A65C
/* 8045A6B8  39 61 00 30 */	addi r11, r1, 0x30
/* 8045A6BC  4B C4 08 55 */	bl func_8009AF10
/* 8045A6C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8045A6C4  7C 08 03 A6 */	mtlr r0
/* 8045A6C8  38 21 00 30 */	addi r1, r1, 0x30
/* 8045A6CC  4E 80 00 20 */	blr 
