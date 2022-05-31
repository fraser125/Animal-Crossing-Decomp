lbl_805C1F7C:
/* 805C1F7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C1F80  7C 08 02 A6 */	mflr r0
/* 805C1F84  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C1F88  39 61 00 20 */	addi r11, r1, 0x20
/* 805C1F8C  4B AD 8F 3D */	bl func_8009AEC8
/* 805C1F90  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805C1F94  7C 9E 23 78 */	mr r30, r4
/* 805C1F98  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 805C1F9C  3C A0 80 6C */	lis r5, data_806C75B8@ha /* 0x806C75B8@ha */
/* 805C1FA0  3C 84 00 02 */	addis r4, r4, 2
/* 805C1FA4  7C 7D 1B 78 */	mr r29, r3
/* 805C1FA8  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805C1FAC  3B 45 75 B8 */	addi r26, r5, data_806C75B8@l /* 0x806C75B8@l */
/* 805C1FB0  83 FE 00 00 */	lwz r31, 0(r30)
/* 805C1FB4  38 60 00 46 */	li r3, 0x46
/* 805C1FB8  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805C1FBC  7D 89 03 A6 */	mtctr r12
/* 805C1FC0  4E 80 04 21 */	bctrl 
/* 805C1FC4  7C 7B 1B 78 */	mr r27, r3
/* 805C1FC8  7F E3 FB 78 */	mr r3, r31
/* 805C1FCC  4B E4 B4 09 */	bl _Matrix_to_Mtx_new
/* 805C1FD0  7C 7C 1B 79 */	or. r28, r3, r3
/* 805C1FD4  41 82 00 A8 */	beq lbl_805C207C
/* 805C1FD8  7F E3 FB 78 */	mr r3, r31
/* 805C1FDC  4B E2 31 CD */	bl _texture_z_light_fog_prim_npc
/* 805C1FE0  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805C1FE4  81 5F 02 D0 */	lwz r10, 0x2d0(r31)
/* 805C1FE8  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805C1FEC  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805C1FF0  90 0A 00 00 */	stw r0, 0(r10)
/* 805C1FF4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805C1FF8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805C1FFC  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805C2000  93 6A 00 04 */	stw r27, 4(r10)
/* 805C2004  3D 20 DE 00 */	lis r9, 0xde00
/* 805C2008  39 1A 01 18 */	addi r8, r26, 0x118
/* 805C200C  38 FA 01 20 */	addi r7, r26, 0x120
/* 805C2010  90 0A 00 08 */	stw r0, 8(r10)
/* 805C2014  3C 83 00 02 */	addis r4, r3, 2
/* 805C2018  38 DA 01 10 */	addi r6, r26, 0x110
/* 805C201C  7F C3 F3 78 */	mr r3, r30
/* 805C2020  93 8A 00 0C */	stw r28, 0xc(r10)
/* 805C2024  38 A0 00 00 */	li r5, 0
/* 805C2028  91 2A 00 10 */	stw r9, 0x10(r10)
/* 805C202C  80 1D 02 B8 */	lwz r0, 0x2b8(r29)
/* 805C2030  54 00 10 3A */	slwi r0, r0, 2
/* 805C2034  7C 08 00 2E */	lwzx r0, r8, r0
/* 805C2038  90 0A 00 14 */	stw r0, 0x14(r10)
/* 805C203C  39 4A 00 18 */	addi r10, r10, 0x18
/* 805C2040  7D 48 53 78 */	mr r8, r10
/* 805C2044  91 2A 00 00 */	stw r9, 0(r10)
/* 805C2048  39 4A 00 08 */	addi r10, r10, 8
/* 805C204C  80 1D 02 B8 */	lwz r0, 0x2b8(r29)
/* 805C2050  54 00 10 3A */	slwi r0, r0, 2
/* 805C2054  7C 07 00 2E */	lwzx r0, r7, r0
/* 805C2058  90 08 00 04 */	stw r0, 4(r8)
/* 805C205C  91 5F 02 D0 */	stw r10, 0x2d0(r31)
/* 805C2060  80 84 60 80 */	lwz r4, 0x6080(r4)
/* 805C2064  80 1D 02 B8 */	lwz r0, 0x2b8(r29)
/* 805C2068  81 84 00 04 */	lwz r12, 4(r4)
/* 805C206C  54 00 10 3A */	slwi r0, r0, 2
/* 805C2070  7C 86 00 2E */	lwzx r4, r6, r0
/* 805C2074  7D 89 03 A6 */	mtctr r12
/* 805C2078  4E 80 04 21 */	bctrl 
lbl_805C207C:
/* 805C207C  39 61 00 20 */	addi r11, r1, 0x20
/* 805C2080  4B AD 8E 95 */	bl func_8009AF14
/* 805C2084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C2088  7C 08 03 A6 */	mtlr r0
/* 805C208C  38 21 00 20 */	addi r1, r1, 0x20
/* 805C2090  4E 80 00 20 */	blr 
