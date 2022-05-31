lbl_804D41C8:
/* 804D41C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D41CC  7C 08 02 A6 */	mflr r0
/* 804D41D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D41D4  38 00 00 00 */	li r0, 0
/* 804D41D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D41DC  7C 9F 23 78 */	mr r31, r4
/* 804D41E0  93 C1 00 08 */	stw r30, 8(r1)
/* 804D41E4  7C 7E 1B 78 */	mr r30, r3
/* 804D41E8  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804D41EC  2C 04 00 00 */	cmpwi r4, 0
/* 804D41F0  41 80 00 10 */	blt lbl_804D4200
/* 804D41F4  2C 04 00 79 */	cmpwi r4, 0x79
/* 804D41F8  40 80 00 08 */	bge lbl_804D4200
/* 804D41FC  38 00 00 01 */	li r0, 1
lbl_804D4200:
/* 804D4200  2C 00 00 00 */	cmpwi r0, 0
/* 804D4204  41 82 00 38 */	beq lbl_804D423C
/* 804D4208  3C 60 80 65 */	lis r3, proc_17058@ha /* 0x806487B0@ha */
/* 804D420C  54 80 10 3A */	slwi r0, r4, 2
/* 804D4210  38 63 87 B0 */	addi r3, r3, proc_17058@l /* 0x806487B0@l */
/* 804D4214  7D 83 00 2E */	lwzx r12, r3, r0
/* 804D4218  28 0C 00 00 */	cmplwi r12, 0
/* 804D421C  41 82 00 14 */	beq lbl_804D4230
/* 804D4220  7F C3 F3 78 */	mr r3, r30
/* 804D4224  7F E4 FB 78 */	mr r4, r31
/* 804D4228  7D 89 03 A6 */	mtctr r12
/* 804D422C  4E 80 04 21 */	bctrl 
lbl_804D4230:
/* 804D4230  7F C3 F3 78 */	mr r3, r30
/* 804D4234  7F E4 FB 78 */	mr r4, r31
/* 804D4238  48 00 C5 B5 */	bl Player_actor_settle_main_other_func2
lbl_804D423C:
/* 804D423C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D4244  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D4248  7C 08 03 A6 */	mtlr r0
/* 804D424C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4250  4E 80 00 20 */	blr 
