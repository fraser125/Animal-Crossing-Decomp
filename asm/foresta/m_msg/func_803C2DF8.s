lbl_803C2DF8:
/* 803C2DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2DFC  7C 08 02 A6 */	mflr r0
/* 803C2E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2E04  80 03 04 40 */	lwz r0, 0x440(r3)
/* 803C2E08  2C 00 00 00 */	cmpwi r0, 0
/* 803C2E0C  41 82 00 48 */	beq lbl_803C2E54
/* 803C2E10  80 03 04 3C */	lwz r0, 0x43c(r3)
/* 803C2E14  2C 00 00 00 */	cmpwi r0, 0
/* 803C2E18  40 82 00 3C */	bne lbl_803C2E54
/* 803C2E1C  80 03 04 0C */	lwz r0, 0x40c(r3)
/* 803C2E20  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 803C2E24  40 82 00 30 */	bne lbl_803C2E54
/* 803C2E28  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 803C2E2C  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 803C2E30  4B FD 30 E1 */	bl chkTrigger
/* 803C2E34  2C 03 00 00 */	cmpwi r3, 0
/* 803C2E38  40 82 00 14 */	bne lbl_803C2E4C
/* 803C2E3C  38 60 40 00 */	li r3, 0x4000
/* 803C2E40  4B FD 30 D1 */	bl chkTrigger
/* 803C2E44  2C 03 00 00 */	cmpwi r3, 0
/* 803C2E48  41 82 00 0C */	beq lbl_803C2E54
lbl_803C2E4C:
/* 803C2E4C  38 60 00 01 */	li r3, 1
/* 803C2E50  48 00 00 08 */	b lbl_803C2E58
lbl_803C2E54:
/* 803C2E54  38 60 00 00 */	li r3, 0
lbl_803C2E58:
/* 803C2E58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2E5C  7C 08 03 A6 */	mtlr r0
/* 803C2E60  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2E64  4E 80 00 20 */	blr 
