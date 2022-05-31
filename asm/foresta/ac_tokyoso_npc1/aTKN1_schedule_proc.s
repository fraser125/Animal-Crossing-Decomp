lbl_8058D720:
/* 8058D720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D724  7C 08 02 A6 */	mflr r0
/* 8058D728  2C 05 00 01 */	cmpwi r5, 1
/* 8058D72C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D730  41 82 00 1C */	beq lbl_8058D74C
/* 8058D734  40 80 00 1C */	bge lbl_8058D750
/* 8058D738  2C 05 00 00 */	cmpwi r5, 0
/* 8058D73C  40 80 00 08 */	bge lbl_8058D744
/* 8058D740  48 00 00 10 */	b lbl_8058D750
lbl_8058D744:
/* 8058D744  4B FF FE C5 */	bl aTKN1_schedule_init_proc
/* 8058D748  48 00 00 08 */	b lbl_8058D750
lbl_8058D74C:
/* 8058D74C  4B FF FF 09 */	bl aTKN1_schedule_main_proc
lbl_8058D750:
/* 8058D750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D754  7C 08 03 A6 */	mtlr r0
/* 8058D758  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D75C  4E 80 00 20 */	blr 
