lbl_805B8FD4:
/* 805B8FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B8FD8  7C 08 02 A6 */	mflr r0
/* 805B8FDC  38 60 00 4C */	li r3, 0x4c
/* 805B8FE0  38 80 00 00 */	li r4, 0
/* 805B8FE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B8FE8  4B DE 50 F5 */	bl mEv_get_common_area
/* 805B8FEC  28 03 00 00 */	cmplwi r3, 0
/* 805B8FF0  41 82 00 18 */	beq lbl_805B9008
/* 805B8FF4  80 03 00 04 */	lwz r0, 4(r3)
/* 805B8FF8  2C 00 00 02 */	cmpwi r0, 2
/* 805B8FFC  40 82 00 0C */	bne lbl_805B9008
/* 805B9000  38 00 00 00 */	li r0, 0
/* 805B9004  90 03 00 00 */	stw r0, 0(r3)
lbl_805B9008:
/* 805B9008  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B900C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B9010  3C 63 00 02 */	addis r3, r3, 2
/* 805B9014  80 03 04 E0 */	lwz r0, 0x4e0(r3)
/* 805B9018  2C 00 00 03 */	cmpwi r0, 3
/* 805B901C  41 80 00 0C */	blt lbl_805B9028
/* 805B9020  38 60 00 4C */	li r3, 0x4c
/* 805B9024  4B DE 5E 79 */	bl mEv_special_event_soldout
lbl_805B9028:
/* 805B9028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B902C  7C 08 03 A6 */	mtlr r0
/* 805B9030  38 21 00 10 */	addi r1, r1, 0x10
/* 805B9034  4E 80 00 20 */	blr 
