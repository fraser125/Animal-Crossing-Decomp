lbl_805B8E54:
/* 805B8E54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B8E58  7C 08 02 A6 */	mflr r0
/* 805B8E5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B8E60  39 61 00 30 */	addi r11, r1, 0x30
/* 805B8E64  4B AE 20 61 */	bl func_8009AEC4
/* 805B8E68  80 A3 02 D8 */	lwz r5, 0x2d8(r3)
/* 805B8E6C  7C 9C 23 78 */	mr r28, r4
/* 805B8E70  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 805B8E74  3C 80 80 6C */	lis r4, data_806C64A0@ha /* 0x806C64A0@ha */
/* 805B8E78  20 65 00 03 */	subfic r3, r5, 3
/* 805B8E7C  83 FC 00 00 */	lwz r31, 0(r28)
/* 805B8E80  20 00 00 42 */	subfic r0, r0, 0x42
/* 805B8E84  38 84 64 A0 */	addi r4, r4, data_806C64A0@l /* 0x806C64A0@l */
/* 805B8E88  7C 00 00 34 */	cntlzw r0, r0
/* 805B8E8C  7C 63 00 34 */	cntlzw r3, r3
/* 805B8E90  54 1D D9 7F */	rlwinm. r29, r0, 0x1b, 5, 0x1f
/* 805B8E94  54 60 D9 7E */	srwi r0, r3, 5
/* 805B8E98  41 82 00 18 */	beq lbl_805B8EB0
/* 805B8E9C  54 00 10 3A */	slwi r0, r0, 2
/* 805B8EA0  38 64 00 5C */	addi r3, r4, 0x5c
/* 805B8EA4  7F 23 00 2E */	lwzx r25, r3, r0
/* 805B8EA8  3B C4 00 3C */	addi r30, r4, 0x3c
/* 805B8EAC  48 00 00 14 */	b lbl_805B8EC0
lbl_805B8EB0:
/* 805B8EB0  54 00 10 3A */	slwi r0, r0, 2
/* 805B8EB4  38 64 00 54 */	addi r3, r4, 0x54
/* 805B8EB8  7F 23 00 2E */	lwzx r25, r3, r0
/* 805B8EBC  3B C4 00 28 */	addi r30, r4, 0x28
lbl_805B8EC0:
/* 805B8EC0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B8EC4  38 60 00 3E */	li r3, 0x3e
/* 805B8EC8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B8ECC  3C 84 00 02 */	addis r4, r4, 2
/* 805B8ED0  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805B8ED4  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805B8ED8  7D 89 03 A6 */	mtctr r12
/* 805B8EDC  4E 80 04 21 */	bctrl 
/* 805B8EE0  7C 7A 1B 78 */	mr r26, r3
/* 805B8EE4  7F E3 FB 78 */	mr r3, r31
/* 805B8EE8  4B E5 44 ED */	bl _Matrix_to_Mtx_new
/* 805B8EEC  7C 7B 1B 79 */	or. r27, r3, r3
/* 805B8EF0  41 82 00 A8 */	beq lbl_805B8F98
/* 805B8EF4  7F E3 FB 78 */	mr r3, r31
/* 805B8EF8  4B E2 C2 B1 */	bl _texture_z_light_fog_prim_npc
/* 805B8EFC  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805B8F00  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 805B8F04  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805B8F08  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805B8F0C  90 04 00 00 */	stw r0, 0(r4)
/* 805B8F10  38 63 00 03 */	addi r3, r3, 0x0003 /* 0xDA380003@l */
/* 805B8F14  3C 00 DE 00 */	lis r0, 0xde00
/* 805B8F18  2C 1D 00 00 */	cmpwi r29, 0
/* 805B8F1C  93 44 00 04 */	stw r26, 4(r4)
/* 805B8F20  90 64 00 08 */	stw r3, 8(r4)
/* 805B8F24  93 64 00 0C */	stw r27, 0xc(r4)
/* 805B8F28  38 84 00 10 */	addi r4, r4, 0x10
/* 805B8F2C  7C 83 23 78 */	mr r3, r4
/* 805B8F30  90 04 00 00 */	stw r0, 0(r4)
/* 805B8F34  38 84 00 08 */	addi r4, r4, 8
/* 805B8F38  93 23 00 04 */	stw r25, 4(r3)
/* 805B8F3C  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 805B8F40  41 82 00 30 */	beq lbl_805B8F70
/* 805B8F44  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B8F48  7F 83 E3 78 */	mr r3, r28
/* 805B8F4C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805B8F50  7F C4 F3 78 */	mr r4, r30
/* 805B8F54  3C C5 00 02 */	addis r6, r5, 2
/* 805B8F58  38 A0 00 01 */	li r5, 1
/* 805B8F5C  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 805B8F60  81 86 00 04 */	lwz r12, 4(r6)
/* 805B8F64  7D 89 03 A6 */	mtctr r12
/* 805B8F68  4E 80 04 21 */	bctrl 
/* 805B8F6C  48 00 00 2C */	b lbl_805B8F98
lbl_805B8F70:
/* 805B8F70  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B8F74  7F 83 E3 78 */	mr r3, r28
/* 805B8F78  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805B8F7C  7F C4 F3 78 */	mr r4, r30
/* 805B8F80  3C C5 00 02 */	addis r6, r5, 2
/* 805B8F84  38 A0 00 00 */	li r5, 0
/* 805B8F88  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 805B8F8C  81 86 00 04 */	lwz r12, 4(r6)
/* 805B8F90  7D 89 03 A6 */	mtctr r12
/* 805B8F94  4E 80 04 21 */	bctrl 
lbl_805B8F98:
/* 805B8F98  39 61 00 30 */	addi r11, r1, 0x30
/* 805B8F9C  4B AE 1F 75 */	bl func_8009AF10
/* 805B8FA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B8FA4  7C 08 03 A6 */	mtlr r0
/* 805B8FA8  38 21 00 30 */	addi r1, r1, 0x30
/* 805B8FAC  4E 80 00 20 */	blr 
