lbl_803BC0A8:
/* 803BC0A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC0AC  7C 08 02 A6 */	mflr r0
/* 803BC0B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC0B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BC0B8  7C 7F 1B 78 */	mr r31, r3
/* 803BC0BC  48 00 00 B5 */	bl Global_light_list_ct
/* 803BC0C0  7F E3 FB 78 */	mr r3, r31
/* 803BC0C4  38 80 00 50 */	li r4, 0x50
/* 803BC0C8  38 A0 00 50 */	li r5, 0x50
/* 803BC0CC  38 C0 00 50 */	li r6, 0x50
/* 803BC0D0  48 00 00 45 */	bl Global_light_ambient_set
/* 803BC0D4  7F E3 FB 78 */	mr r3, r31
/* 803BC0D8  38 80 00 00 */	li r4, 0
/* 803BC0DC  38 A0 00 00 */	li r5, 0
/* 803BC0E0  38 C0 00 00 */	li r6, 0
/* 803BC0E4  38 E0 03 E4 */	li r7, 0x3e4
/* 803BC0E8  39 00 06 40 */	li r8, 0x640
/* 803BC0EC  48 00 00 39 */	bl Global_light_fog_set
/* 803BC0F0  3C 60 81 17 */	lis r3, light_list_buf@ha /* 0x81169C50@ha */
/* 803BC0F4  38 80 01 88 */	li r4, 0x188
/* 803BC0F8  38 63 9C 50 */	addi r3, r3, light_list_buf@l /* 0x81169C50@l */
/* 803BC0FC  4B CA 0F 6D */	bl bzero
/* 803BC100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BC108  7C 08 03 A6 */	mtlr r0
/* 803BC10C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC110  4E 80 00 20 */	blr 
