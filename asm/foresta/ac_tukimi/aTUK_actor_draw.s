lbl_805C0FB8:
/* 805C0FB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C0FBC  7C 08 02 A6 */	mflr r0
/* 805C0FC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C0FC4  39 61 00 20 */	addi r11, r1, 0x20
/* 805C0FC8  4B AD 9F 01 */	bl func_8009AEC8
/* 805C0FCC  7C 7C 1B 78 */	mr r28, r3
/* 805C0FD0  80 63 01 90 */	lwz r3, 0x190(r3)
/* 805C0FD4  83 E4 00 00 */	lwz r31, 0(r4)
/* 805C0FD8  7C 9D 23 78 */	mr r29, r4
/* 805C0FDC  88 63 00 01 */	lbz r3, 1(r3)
/* 805C0FE0  3B DC 01 78 */	addi r30, r28, 0x178
/* 805C0FE4  80 1F 02 D4 */	lwz r0, 0x2d4(r31)
/* 805C0FE8  54 63 30 32 */	slwi r3, r3, 6
/* 805C0FEC  7C 03 00 51 */	subf. r0, r3, r0
/* 805C0FF0  90 1F 02 D4 */	stw r0, 0x2d4(r31)
/* 805C0FF4  7C 1A 03 78 */	mr r26, r0
/* 805C0FF8  41 82 00 B0 */	beq lbl_805C10A8
/* 805C0FFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805C1000  80 1C 02 AC */	lwz r0, 0x2ac(r28)
/* 805C1004  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805C1008  3C 83 00 02 */	addis r4, r3, 2
/* 805C100C  7C 03 07 34 */	extsh r3, r0
/* 805C1010  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805C1014  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805C1018  7D 89 03 A6 */	mtctr r12
/* 805C101C  4E 80 04 21 */	bctrl 
/* 805C1020  7C 7B 1B 78 */	mr r27, r3
/* 805C1024  7F E3 FB 78 */	mr r3, r31
/* 805C1028  4B E2 41 81 */	bl _texture_z_light_fog_prim_npc
/* 805C102C  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 805C1030  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805C1034  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 805C1038  3C 80 80 5C */	lis r4, func_805C0ECC@ha /* 0x805C0ECC@ha */
/* 805C103C  90 08 00 00 */	stw r0, 0(r8)
/* 805C1040  7D 09 43 78 */	mr r9, r8
/* 805C1044  3C 60 80 5C */	lis r3, aTUK_actor_draw_after@ha /* 0x805C0EE4@ha */
/* 805C1048  38 C4 0E CC */	addi r6, r4, func_805C0ECC@l /* 0x805C0ECC@l */
/* 805C104C  93 69 00 04 */	stw r27, 4(r9)
/* 805C1050  39 08 00 08 */	addi r8, r8, 8
/* 805C1054  38 E3 0E E4 */	addi r7, r3, aTUK_actor_draw_after@l /* 0x805C0EE4@l */
/* 805C1058  7F A3 EB 78 */	mr r3, r29
/* 805C105C  91 1F 02 D0 */	stw r8, 0x2d0(r31)
/* 805C1060  7F C4 F3 78 */	mr r4, r30
/* 805C1064  7F 45 D3 78 */	mr r5, r26
/* 805C1068  7F 88 E3 78 */	mr r8, r28
/* 805C106C  4B DB 06 CD */	bl cKF_Si3_draw_R_SV
/* 805C1070  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805C1074  80 1C 02 B8 */	lwz r0, 0x2b8(r28)
/* 805C1078  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805C107C  3C 80 80 6C */	lis r4, shadow_data@ha /* 0x806C72F4@ha */
/* 805C1080  3C 63 00 02 */	addis r3, r3, 2
/* 805C1084  54 00 10 3A */	slwi r0, r0, 2
/* 805C1088  80 A3 60 80 */	lwz r5, 0x6080(r3)
/* 805C108C  38 84 72 F4 */	addi r4, r4, shadow_data@l /* 0x806C72F4@l */
/* 805C1090  7F A3 EB 78 */	mr r3, r29
/* 805C1094  7C 84 00 2E */	lwzx r4, r4, r0
/* 805C1098  81 85 00 04 */	lwz r12, 4(r5)
/* 805C109C  38 A0 00 00 */	li r5, 0
/* 805C10A0  7D 89 03 A6 */	mtctr r12
/* 805C10A4  4E 80 04 21 */	bctrl 
lbl_805C10A8:
/* 805C10A8  39 61 00 20 */	addi r11, r1, 0x20
/* 805C10AC  4B AD 9E 69 */	bl func_8009AF14
/* 805C10B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C10B4  7C 08 03 A6 */	mtlr r0
/* 805C10B8  38 21 00 20 */	addi r1, r1, 0x20
/* 805C10BC  4E 80 00 20 */	blr 
