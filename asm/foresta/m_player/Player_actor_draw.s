lbl_804D443C:
/* 804D443C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4440  7C 08 02 A6 */	mflr r0
/* 804D4444  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4448  38 00 00 00 */	li r0, 0
/* 804D444C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D4450  7C 9F 23 78 */	mr r31, r4
/* 804D4454  93 C1 00 08 */	stw r30, 8(r1)
/* 804D4458  7C 7E 1B 78 */	mr r30, r3
/* 804D445C  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804D4460  2C 04 00 00 */	cmpwi r4, 0
/* 804D4464  41 80 00 10 */	blt lbl_804D4474
/* 804D4468  2C 04 00 79 */	cmpwi r4, 0x79
/* 804D446C  40 80 00 08 */	bge lbl_804D4474
/* 804D4470  38 00 00 01 */	li r0, 1
lbl_804D4474:
/* 804D4474  2C 00 00 00 */	cmpwi r0, 0
/* 804D4478  41 82 00 54 */	beq lbl_804D44CC
/* 804D447C  3C 60 80 65 */	lis r3, data_17099@ha /* 0x80648D5C@ha */
/* 804D4480  38 63 8D 5C */	addi r3, r3, data_17099@l /* 0x80648D5C@l */
/* 804D4484  7C 03 20 AE */	lbzx r0, r3, r4
/* 804D4488  7C 00 07 75 */	extsb. r0, r0
/* 804D448C  41 80 00 40 */	blt lbl_804D44CC
/* 804D4490  2C 00 00 02 */	cmpwi r0, 2
/* 804D4494  40 80 00 38 */	bge lbl_804D44CC
/* 804D4498  3C 60 80 65 */	lis r3, proc_17103@ha /* 0x80648DD8@ha */
/* 804D449C  54 00 10 3A */	slwi r0, r0, 2
/* 804D44A0  38 63 8D D8 */	addi r3, r3, proc_17103@l /* 0x80648DD8@l */
/* 804D44A4  7D 83 00 2E */	lwzx r12, r3, r0
/* 804D44A8  28 0C 00 00 */	cmplwi r12, 0
/* 804D44AC  41 82 00 20 */	beq lbl_804D44CC
/* 804D44B0  7F C3 F3 78 */	mr r3, r30
/* 804D44B4  7F E4 FB 78 */	mr r4, r31
/* 804D44B8  7D 89 03 A6 */	mtctr r12
/* 804D44BC  4E 80 04 21 */	bctrl 
/* 804D44C0  7F C3 F3 78 */	mr r3, r30
/* 804D44C4  7F E4 FB 78 */	mr r4, r31
/* 804D44C8  48 00 C2 FD */	bl Player_actor_draw_other_func2
lbl_804D44CC:
/* 804D44CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D44D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D44D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D44D8  7C 08 03 A6 */	mtlr r0
/* 804D44DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804D44E0  4E 80 00 20 */	blr 
