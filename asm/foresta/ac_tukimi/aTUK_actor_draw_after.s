lbl_805C0EE4:
/* 805C0EE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C0EE8  7C 08 02 A6 */	mflr r0
/* 805C0EEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C0EF0  39 61 00 20 */	addi r11, r1, 0x20
/* 805C0EF4  4B AD 9F DD */	bl func_8009AED0
/* 805C0EF8  2C 05 00 07 */	cmpwi r5, 7
/* 805C0EFC  83 A3 00 00 */	lwz r29, 0(r3)
/* 805C0F00  7D 1C 43 78 */	mr r28, r8
/* 805C0F04  40 82 00 98 */	bne lbl_805C0F9C
/* 805C0F08  7F A3 EB 78 */	mr r3, r29
/* 805C0F0C  4B E4 C4 C9 */	bl _Matrix_to_Mtx_new
/* 805C0F10  7C 7E 1B 79 */	or. r30, r3, r3
/* 805C0F14  41 82 00 88 */	beq lbl_805C0F9C
/* 805C0F18  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805C0F1C  80 1C 02 AC */	lwz r0, 0x2ac(r28)
/* 805C0F20  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805C0F24  3C 83 00 02 */	addis r4, r3, 2
/* 805C0F28  7C 03 07 34 */	extsh r3, r0
/* 805C0F2C  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805C0F30  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805C0F34  7D 89 03 A6 */	mtctr r12
/* 805C0F38  4E 80 04 21 */	bctrl 
/* 805C0F3C  7C 7F 1B 78 */	mr r31, r3
/* 805C0F40  7F A3 EB 78 */	mr r3, r29
/* 805C0F44  4B E2 41 ED */	bl _texture_z_light_fog_prim_shadow
/* 805C0F48  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805C0F4C  80 BD 03 00 */	lwz r5, 0x300(r29)
/* 805C0F50  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805C0F54  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805C0F58  90 05 00 00 */	stw r0, 0(r5)
/* 805C0F5C  3C 60 80 6C */	lis r3, mdl@ha /* 0x806C72EC@ha */
/* 805C0F60  38 84 00 03 */	addi r4, r4, 0x0003 /* 0xDA380003@l */
/* 805C0F64  3C 00 DE 00 */	lis r0, 0xde00
/* 805C0F68  93 E5 00 04 */	stw r31, 4(r5)
/* 805C0F6C  38 63 72 EC */	addi r3, r3, mdl@l /* 0x806C72EC@l */
/* 805C0F70  90 85 00 08 */	stw r4, 8(r5)
/* 805C0F74  93 C5 00 0C */	stw r30, 0xc(r5)
/* 805C0F78  38 A5 00 10 */	addi r5, r5, 0x10
/* 805C0F7C  7C A4 2B 78 */	mr r4, r5
/* 805C0F80  90 05 00 00 */	stw r0, 0(r5)
/* 805C0F84  38 A5 00 08 */	addi r5, r5, 8
/* 805C0F88  80 1C 02 B8 */	lwz r0, 0x2b8(r28)
/* 805C0F8C  54 00 10 3A */	slwi r0, r0, 2
/* 805C0F90  7C 03 00 2E */	lwzx r0, r3, r0
/* 805C0F94  90 04 00 04 */	stw r0, 4(r4)
/* 805C0F98  90 BD 03 00 */	stw r5, 0x300(r29)
lbl_805C0F9C:
/* 805C0F9C  38 60 00 01 */	li r3, 1
/* 805C0FA0  39 61 00 20 */	addi r11, r1, 0x20
/* 805C0FA4  4B AD 9F 79 */	bl func_8009AF1C
/* 805C0FA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C0FAC  7C 08 03 A6 */	mtlr r0
/* 805C0FB0  38 21 00 20 */	addi r1, r1, 0x20
/* 805C0FB4  4E 80 00 20 */	blr 
