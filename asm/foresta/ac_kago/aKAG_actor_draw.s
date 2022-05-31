lbl_805B1B70:
/* 805B1B70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B1B74  7C 08 02 A6 */	mflr r0
/* 805B1B78  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B1B7C  39 61 00 20 */	addi r11, r1, 0x20
/* 805B1B80  4B AE 93 4D */	bl func_8009AECC
/* 805B1B84  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805B1B88  7C 7D 1B 78 */	mr r29, r3
/* 805B1B8C  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 805B1B90  80 1D 02 AC */	lwz r0, 0x2ac(r29)
/* 805B1B94  3C 63 00 02 */	addis r3, r3, 2
/* 805B1B98  7C 9E 23 78 */	mr r30, r4
/* 805B1B9C  80 83 60 98 */	lwz r4, 0x6098(r3)
/* 805B1BA0  7C 03 07 34 */	extsh r3, r0
/* 805B1BA4  83 FE 00 00 */	lwz r31, 0(r30)
/* 805B1BA8  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805B1BAC  7D 89 03 A6 */	mtctr r12
/* 805B1BB0  4E 80 04 21 */	bctrl 
/* 805B1BB4  7C 7B 1B 78 */	mr r27, r3
/* 805B1BB8  7F E3 FB 78 */	mr r3, r31
/* 805B1BBC  4B E5 B8 19 */	bl _Matrix_to_Mtx_new
/* 805B1BC0  7C 7C 1B 79 */	or. r28, r3, r3
/* 805B1BC4  41 82 00 8C */	beq lbl_805B1C50
/* 805B1BC8  7F E3 FB 78 */	mr r3, r31
/* 805B1BCC  4B E3 35 3D */	bl _texture_z_light_fog_prim
/* 805B1BD0  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805B1BD4  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 805B1BD8  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805B1BDC  3C A0 80 6C */	lis r5, model@ha /* 0x806C569C@ha */
/* 805B1BE0  90 08 00 00 */	stw r0, 0(r8)
/* 805B1BE4  3C C0 DA 38 */	lis r6, 0xDA38 /* 0xDA380003@ha */
/* 805B1BE8  38 E5 56 9C */	addi r7, r5, model@l /* 0x806C569C@l */
/* 805B1BEC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B1BF0  93 68 00 04 */	stw r27, 4(r8)
/* 805B1BF4  38 06 00 03 */	addi r0, r6, 0x0003 /* 0xDA380003@l */
/* 805B1BF8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B1BFC  3C 80 80 6C */	lis r4, aKAG_shadow_data@ha /* 0x806C5684@ha */
/* 805B1C00  90 08 00 08 */	stw r0, 8(r8)
/* 805B1C04  3C C3 00 02 */	addis r6, r3, 2
/* 805B1C08  3C 00 DE 00 */	lis r0, 0xde00
/* 805B1C0C  38 84 56 84 */	addi r4, r4, aKAG_shadow_data@l /* 0x806C5684@l */
/* 805B1C10  93 88 00 0C */	stw r28, 0xc(r8)
/* 805B1C14  39 08 00 10 */	addi r8, r8, 0x10
/* 805B1C18  7D 09 43 78 */	mr r9, r8
/* 805B1C1C  7F C3 F3 78 */	mr r3, r30
/* 805B1C20  90 08 00 00 */	stw r0, 0(r8)
/* 805B1C24  39 08 00 08 */	addi r8, r8, 8
/* 805B1C28  38 A0 00 00 */	li r5, 0
/* 805B1C2C  80 1D 02 B4 */	lwz r0, 0x2b4(r29)
/* 805B1C30  54 00 10 3A */	slwi r0, r0, 2
/* 805B1C34  7C 07 00 2E */	lwzx r0, r7, r0
/* 805B1C38  90 09 00 04 */	stw r0, 4(r9)
/* 805B1C3C  91 1F 02 D0 */	stw r8, 0x2d0(r31)
/* 805B1C40  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 805B1C44  81 86 00 04 */	lwz r12, 4(r6)
/* 805B1C48  7D 89 03 A6 */	mtctr r12
/* 805B1C4C  4E 80 04 21 */	bctrl 
lbl_805B1C50:
/* 805B1C50  39 61 00 20 */	addi r11, r1, 0x20
/* 805B1C54  4B AE 92 C5 */	bl func_8009AF18
/* 805B1C58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B1C5C  7C 08 03 A6 */	mtlr r0
/* 805B1C60  38 21 00 20 */	addi r1, r1, 0x20
/* 805B1C64  4E 80 00 20 */	blr 
