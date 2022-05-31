lbl_805B3F6C:
/* 805B3F6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B3F70  7C 08 02 A6 */	mflr r0
/* 805B3F74  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B3F78  39 61 00 20 */	addi r11, r1, 0x20
/* 805B3F7C  4B AE 6F 55 */	bl func_8009AED0
/* 805B3F80  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B3F84  7C 9E 23 78 */	mr r30, r4
/* 805B3F88  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B3F8C  83 E4 00 00 */	lwz r31, 0(r4)
/* 805B3F90  3C 83 00 02 */	addis r4, r3, 2
/* 805B3F94  38 60 00 58 */	li r3, 0x58
/* 805B3F98  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805B3F9C  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805B3FA0  7D 89 03 A6 */	mtctr r12
/* 805B3FA4  4E 80 04 21 */	bctrl 
/* 805B3FA8  7C 7C 1B 78 */	mr r28, r3
/* 805B3FAC  7F E3 FB 78 */	mr r3, r31
/* 805B3FB0  4B E5 94 25 */	bl _Matrix_to_Mtx_new
/* 805B3FB4  7C 7D 1B 79 */	or. r29, r3, r3
/* 805B3FB8  41 82 00 8C */	beq lbl_805B4044
/* 805B3FBC  7F E3 FB 78 */	mr r3, r31
/* 805B3FC0  4B E3 11 E9 */	bl _texture_z_light_fog_prim_npc
/* 805B3FC4  3D 20 D5 02 */	lis r9, 0xD502 /* 0xD5020001@ha */
/* 805B3FC8  81 5F 02 D0 */	lwz r10, 0x2d0(r31)
/* 805B3FCC  38 09 00 01 */	addi r0, r9, 0x0001 /* 0xD5020001@l */
/* 805B3FD0  3C A0 DA 38 */	lis r5, 0xDA38 /* 0xDA380003@ha */
/* 805B3FD4  90 0A 00 00 */	stw r0, 0(r10)
/* 805B3FD8  39 00 00 00 */	li r8, 0
/* 805B3FDC  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 805B3FE0  3C 60 80 B9 */	lis r3, obj_e_mikanbox_model@ha /* 0x80B88DC0@ha */
/* 805B3FE4  91 0A 00 04 */	stw r8, 4(r10)
/* 805B3FE8  3C E0 CE 00 */	lis r7, 0xce00
/* 805B3FEC  38 00 00 7F */	li r0, 0x7f
/* 805B3FF0  38 C5 00 03 */	addi r6, r5, 0x0003 /* 0xDA380003@l */
/* 805B3FF4  90 EA 00 08 */	stw r7, 8(r10)
/* 805B3FF8  38 A4 00 20 */	addi r5, r4, 0x0020 /* 0xDB060020@l */
/* 805B3FFC  3C 80 DE 00 */	lis r4, 0xde00
/* 805B4000  38 63 8D C0 */	addi r3, r3, obj_e_mikanbox_model@l /* 0x80B88DC0@l */
/* 805B4004  90 0A 00 0C */	stw r0, 0xc(r10)
/* 805B4008  38 00 00 90 */	li r0, 0x90
/* 805B400C  90 CA 00 10 */	stw r6, 0x10(r10)
/* 805B4010  93 AA 00 14 */	stw r29, 0x14(r10)
/* 805B4014  90 AA 00 18 */	stw r5, 0x18(r10)
/* 805B4018  93 8A 00 1C */	stw r28, 0x1c(r10)
/* 805B401C  90 8A 00 20 */	stw r4, 0x20(r10)
/* 805B4020  90 6A 00 24 */	stw r3, 0x24(r10)
/* 805B4024  91 2A 00 28 */	stw r9, 0x28(r10)
/* 805B4028  91 0A 00 2C */	stw r8, 0x2c(r10)
/* 805B402C  39 4A 00 30 */	addi r10, r10, 0x30
/* 805B4030  7D 43 53 78 */	mr r3, r10
/* 805B4034  90 EA 00 00 */	stw r7, 0(r10)
/* 805B4038  39 4A 00 08 */	addi r10, r10, 8
/* 805B403C  90 03 00 04 */	stw r0, 4(r3)
/* 805B4040  91 5F 02 D0 */	stw r10, 0x2d0(r31)
lbl_805B4044:
/* 805B4044  7F C3 F3 78 */	mr r3, r30
/* 805B4048  4B FF FD 89 */	bl func_805B3DD0
/* 805B404C  39 61 00 20 */	addi r11, r1, 0x20
/* 805B4050  4B AE 6E CD */	bl func_8009AF1C
/* 805B4054  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B4058  7C 08 03 A6 */	mtlr r0
/* 805B405C  38 21 00 20 */	addi r1, r1, 0x20
/* 805B4060  4E 80 00 20 */	blr 
