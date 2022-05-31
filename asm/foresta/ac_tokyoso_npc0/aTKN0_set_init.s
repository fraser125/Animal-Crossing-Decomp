lbl_8058BD80:
/* 8058BD80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058BD84  7C 08 02 A6 */	mflr r0
/* 8058BD88  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058BD8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058BD90  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8058BD94  3C C5 00 02 */	addis r6, r5, 2
/* 8058BD98  38 80 00 6A */	li r4, 0x6a
/* 8058BD9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058BDA0  7C 7F 1B 78 */	mr r31, r3
/* 8058BDA4  38 A0 00 00 */	li r5, 0
/* 8058BDA8  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 8058BDAC  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8058BDB0  7D 89 03 A6 */	mtctr r12
/* 8058BDB4  4E 80 04 21 */	bctrl 
/* 8058BDB8  38 00 00 00 */	li r0, 0
/* 8058BDBC  90 1F 01 BC */	stw r0, 0x1bc(r31)
/* 8058BDC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058BDC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058BDC8  7C 08 03 A6 */	mtlr r0
/* 8058BDCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8058BDD0  4E 80 00 20 */	blr 
