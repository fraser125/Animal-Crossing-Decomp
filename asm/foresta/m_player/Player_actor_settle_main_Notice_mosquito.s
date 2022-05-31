lbl_80505C0C:
/* 80505C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80505C10  7C 08 02 A6 */	mflr r0
/* 80505C14  38 60 00 44 */	li r3, 0x44
/* 80505C18  38 80 01 68 */	li r4, 0x168
/* 80505C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80505C20  4B E7 67 05 */	bl mBGMPsComp_delete_ps_demo
/* 80505C24  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80505C28  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80505C2C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80505C30  2C 00 00 26 */	cmpwi r0, 0x26
/* 80505C34  40 82 00 0C */	bne lbl_80505C40
/* 80505C38  38 60 00 04 */	li r3, 4
/* 80505C3C  4B E7 6C 35 */	bl mBGMPsComp_museum_status
lbl_80505C40:
/* 80505C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80505C44  7C 08 03 A6 */	mtlr r0
/* 80505C48  38 21 00 10 */	addi r1, r1, 0x10
/* 80505C4C  4E 80 00 20 */	blr 
