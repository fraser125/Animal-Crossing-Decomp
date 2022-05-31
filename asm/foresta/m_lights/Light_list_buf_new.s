lbl_803BBFE8:
/* 803BBFE8  3C 60 81 17 */	lis r3, light_list_buf@ha /* 0x81169C50@ha */
/* 803BBFEC  38 C3 9C 50 */	addi r6, r3, light_list_buf@l /* 0x81169C50@l */
/* 803BBFF0  80 06 00 00 */	lwz r0, 0(r6)
/* 803BBFF4  2C 00 00 20 */	cmpwi r0, 0x20
/* 803BBFF8  41 80 00 0C */	blt lbl_803BC004
/* 803BBFFC  38 60 00 00 */	li r3, 0
/* 803BC000  4E 80 00 20 */	blr 
lbl_803BC004:
/* 803BC004  80 06 00 04 */	lwz r0, 4(r6)
/* 803BC008  38 E6 00 08 */	addi r7, r6, 8
/* 803BC00C  38 80 00 00 */	li r4, 0
/* 803BC010  1C 00 00 0C */	mulli r0, r0, 0xc
/* 803BC014  7C 66 02 14 */	add r3, r6, r0
/* 803BC018  38 63 00 08 */	addi r3, r3, 8
/* 803BC01C  48 00 00 28 */	b lbl_803BC044
lbl_803BC020:
/* 803BC020  80 A6 00 04 */	lwz r5, 4(r6)
/* 803BC024  38 05 00 01 */	addi r0, r5, 1
/* 803BC028  2C 00 00 20 */	cmpwi r0, 0x20
/* 803BC02C  90 06 00 04 */	stw r0, 4(r6)
/* 803BC030  40 80 00 0C */	bge lbl_803BC03C
/* 803BC034  38 63 00 0C */	addi r3, r3, 0xc
/* 803BC038  48 00 00 0C */	b lbl_803BC044
lbl_803BC03C:
/* 803BC03C  90 86 00 04 */	stw r4, 4(r6)
/* 803BC040  7C E3 3B 78 */	mr r3, r7
lbl_803BC044:
/* 803BC044  80 03 00 00 */	lwz r0, 0(r3)
/* 803BC048  28 00 00 00 */	cmplwi r0, 0
/* 803BC04C  40 82 FF D4 */	bne lbl_803BC020
/* 803BC050  3C 80 81 17 */	lis r4, light_list_buf@ha /* 0x81169C50@ha */
/* 803BC054  38 A4 9C 50 */	addi r5, r4, light_list_buf@l /* 0x81169C50@l */
/* 803BC058  80 85 00 00 */	lwz r4, 0(r5)
/* 803BC05C  38 04 00 01 */	addi r0, r4, 1
/* 803BC060  90 05 00 00 */	stw r0, 0(r5)
/* 803BC064  4E 80 00 20 */	blr 
