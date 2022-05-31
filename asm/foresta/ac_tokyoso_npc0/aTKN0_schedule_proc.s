lbl_8058C148:
/* 8058C148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C14C  7C 08 02 A6 */	mflr r0
/* 8058C150  2C 05 00 01 */	cmpwi r5, 1
/* 8058C154  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C158  41 82 00 1C */	beq lbl_8058C174
/* 8058C15C  40 80 00 1C */	bge lbl_8058C178
/* 8058C160  2C 05 00 00 */	cmpwi r5, 0
/* 8058C164  40 80 00 08 */	bge lbl_8058C16C
/* 8058C168  48 00 00 10 */	b lbl_8058C178
lbl_8058C16C:
/* 8058C16C  4B FF FF 11 */	bl aTKN0_schedule_init_proc
/* 8058C170  48 00 00 08 */	b lbl_8058C178
lbl_8058C174:
/* 8058C174  4B FF FF 55 */	bl aTKN0_schedule_main_proc
lbl_8058C178:
/* 8058C178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C17C  7C 08 03 A6 */	mtlr r0
/* 8058C180  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C184  4E 80 00 20 */	blr 
