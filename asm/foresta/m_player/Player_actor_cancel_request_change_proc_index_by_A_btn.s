lbl_804DA764:
/* 804DA764  80 03 13 90 */	lwz r0, 0x1390(r3)
/* 804DA768  2C 00 00 00 */	cmpwi r0, 0
/* 804DA76C  4D 82 00 20 */	beqlr 
/* 804DA770  80 A3 0D 08 */	lwz r5, 0xd08(r3)
/* 804DA774  38 00 00 00 */	li r0, 0
/* 804DA778  2C 05 00 00 */	cmpwi r5, 0
/* 804DA77C  41 80 00 10 */	blt lbl_804DA78C
/* 804DA780  2C 05 00 79 */	cmpwi r5, 0x79
/* 804DA784  40 80 00 08 */	bge lbl_804DA78C
/* 804DA788  38 00 00 01 */	li r0, 1
lbl_804DA78C:
/* 804DA78C  2C 00 00 00 */	cmpwi r0, 0
/* 804DA790  41 82 00 28 */	beq lbl_804DA7B8
/* 804DA794  3C 80 80 64 */	lis r4, data_2977@ha /* 0x80646DD8@ha */
/* 804DA798  38 84 6D D8 */	addi r4, r4, data_2977@l /* 0x80646DD8@l */
/* 804DA79C  7C 04 28 AE */	lbzx r0, r4, r5
/* 804DA7A0  7C 00 07 75 */	extsb. r0, r0
/* 804DA7A4  41 82 00 14 */	beq lbl_804DA7B8
/* 804DA7A8  38 80 FF FF */	li r4, -1
/* 804DA7AC  38 00 00 00 */	li r0, 0
/* 804DA7B0  90 83 0D 0C */	stw r4, 0xd0c(r3)
/* 804DA7B4  90 03 0D 10 */	stw r0, 0xd10(r3)
lbl_804DA7B8:
/* 804DA7B8  38 00 00 00 */	li r0, 0
/* 804DA7BC  90 03 13 90 */	stw r0, 0x1390(r3)
/* 804DA7C0  4E 80 00 20 */	blr 
