lbl_803C23D4:
/* 803C23D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C23D8  7C 08 02 A6 */	mflr r0
/* 803C23DC  2C 03 00 04 */	cmpwi r3, 4
/* 803C23E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C23E4  41 82 00 20 */	beq lbl_803C2404
/* 803C23E8  2C 03 00 03 */	cmpwi r3, 3
/* 803C23EC  41 82 00 18 */	beq lbl_803C2404
/* 803C23F0  3C 80 80 65 */	lis r4, mMsg_se_num@ha /* 0x8065723C@ha */
/* 803C23F4  54 60 08 3C */	slwi r0, r3, 1
/* 803C23F8  38 64 72 3C */	addi r3, r4, mMsg_se_num@l /* 0x8065723C@l */
/* 803C23FC  7C 63 02 2E */	lhzx r3, r3, r0
/* 803C2400  48 26 B9 05 */	bl sAdo_SysTrgStart
lbl_803C2404:
/* 803C2404  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2408  7C 08 03 A6 */	mtlr r0
/* 803C240C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2410  4E 80 00 20 */	blr 
