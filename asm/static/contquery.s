.include "macros.inc"

.section .text

.org 0x800605D4

.global osContStartQuery
osContStartQuery:
/* 800605D4 0005D534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800605D8 0005D538  7C 08 02 A6 */	mflr r0
/* 800605DC 0005D53C  38 80 00 00 */	li r4, 0
/* 800605E0 0005D540  38 A0 00 00 */	li r5, 0
/* 800605E4 0005D544  90 01 00 14 */	stw r0, 0x14(r1)
/* 800605E8 0005D548  4B FF FB 55 */	bl osSendMesg
/* 800605EC 0005D54C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800605F0 0005D550  38 60 00 00 */	li r3, 0
/* 800605F4 0005D554  7C 08 03 A6 */	mtlr r0
/* 800605F8 0005D558  38 21 00 10 */	addi r1, r1, 0x10
/* 800605FC 0005D55C  4E 80 00 20 */	blr 

.global osContGetQuery
osContGetQuery:
/* 80060600 0005D560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80060604 0005D564  7C 08 02 A6 */	mflr r0
/* 80060608 0005D568  7C 64 1B 78 */	mr r4, r3
/* 8006060C 0005D56C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80060610 0005D570  38 61 00 08 */	addi r3, r1, 8
/* 80060614 0005D574  48 00 06 65 */	bl __osContGetInitData
/* 80060618 0005D578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006061C 0005D57C  7C 08 03 A6 */	mtlr r0
/* 80060620 0005D580  38 21 00 10 */	addi r1, r1, 0x10
/* 80060624 0005D584  4E 80 00 20 */	blr 
