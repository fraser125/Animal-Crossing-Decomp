lbl_8042C44C:
/* 8042C44C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042C450  7C 08 02 A6 */	mflr r0
/* 8042C454  2C 05 00 0D */	cmpwi r5, 0xd
/* 8042C458  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042C45C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042C460  93 C1 00 08 */	stw r30, 8(r1)
/* 8042C464  40 82 00 4C */	bne lbl_8042C4B0
/* 8042C468  83 C3 00 00 */	lwz r30, 0(r3)
/* 8042C46C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8042C470  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8042C474  83 FE 03 00 */	lwz r31, 0x300(r30)
/* 8042C478  38 9F 00 08 */	addi r4, r31, 8
/* 8042C47C  90 9E 03 00 */	stw r4, 0x300(r30)
/* 8042C480  90 1F 00 00 */	stw r0, 0(r31)
/* 8042C484  80 63 00 00 */	lwz r3, 0(r3)
/* 8042C488  4B FE 0F 4D */	bl _Matrix_to_Mtx_new
/* 8042C48C  90 7F 00 04 */	stw r3, 4(r31)
/* 8042C490  3C 60 80 8E */	lis r3, obj_toudai_pole_kage_model@ha /* 0x808E0ED0@ha */
/* 8042C494  3C 80 DE 00 */	lis r4, 0xde00
/* 8042C498  80 BE 03 00 */	lwz r5, 0x300(r30)
/* 8042C49C  38 03 0E D0 */	addi r0, r3, obj_toudai_pole_kage_model@l /* 0x808E0ED0@l */
/* 8042C4A0  38 65 00 08 */	addi r3, r5, 8
/* 8042C4A4  90 7E 03 00 */	stw r3, 0x300(r30)
/* 8042C4A8  90 85 00 00 */	stw r4, 0(r5)
/* 8042C4AC  90 05 00 04 */	stw r0, 4(r5)
lbl_8042C4B0:
/* 8042C4B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042C4B4  38 60 00 01 */	li r3, 1
/* 8042C4B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042C4BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042C4C0  7C 08 03 A6 */	mtlr r0
/* 8042C4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8042C4C8  4E 80 00 20 */	blr 
