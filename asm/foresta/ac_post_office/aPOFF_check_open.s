lbl_805B7E2C:
/* 805B7E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B7E30  7C 08 02 A6 */	mflr r0
/* 805B7E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B7E38  80 03 02 B0 */	lwz r0, 0x2b0(r3)
/* 805B7E3C  2C 00 00 05 */	cmpwi r0, 5
/* 805B7E40  41 82 00 1C */	beq lbl_805B7E5C
/* 805B7E44  40 80 00 20 */	bge lbl_805B7E64
/* 805B7E48  2C 00 00 00 */	cmpwi r0, 0
/* 805B7E4C  41 82 00 08 */	beq lbl_805B7E54
/* 805B7E50  48 00 00 14 */	b lbl_805B7E64
lbl_805B7E54:
/* 805B7E54  4B FF FF 0D */	bl aPOFF_check_player
/* 805B7E58  48 00 00 20 */	b lbl_805B7E78
lbl_805B7E5C:
/* 805B7E5C  38 60 00 00 */	li r3, 0
/* 805B7E60  48 00 00 18 */	b lbl_805B7E78
lbl_805B7E64:
/* 805B7E64  3C 60 80 6C */	lis r3, cond@ha /* 0x806C634C@ha */
/* 805B7E68  54 00 10 3A */	slwi r0, r0, 2
/* 805B7E6C  38 63 63 4C */	addi r3, r3, cond@l /* 0x806C634C@l */
/* 805B7E70  7C 63 02 14 */	add r3, r3, r0
/* 805B7E74  80 63 FF FC */	lwz r3, -4(r3)
lbl_805B7E78:
/* 805B7E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B7E7C  7C 08 03 A6 */	mtlr r0
/* 805B7E80  38 21 00 10 */	addi r1, r1, 0x10
/* 805B7E84  4E 80 00 20 */	blr 
