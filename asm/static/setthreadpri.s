.include "macros.inc"

.section .text

.org 0x8006015C

.global osSetThreadPri
osSetThreadPri:
/* 8006015C 0005D0BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80060160 0005D0C0  7C 08 02 A6 */	mflr r0
/* 80060164 0005D0C4  28 03 00 00 */	cmplwi r3, 0
/* 80060168 0005D0C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006016C 0005D0CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80060170 0005D0D0  23 E4 00 1F */	subfic r31, r4, 0x1f
/* 80060174 0005D0D4  40 82 00 08 */	bne lbl_8006017C
/* 80060178 0005D0D8  48 01 DB 65 */	bl OSGetCurrentThread
lbl_8006017C:
/* 8006017C 0005D0DC  7F E4 FB 78 */	mr r4, r31
/* 80060180 0005D0E0  48 01 EC C5 */	bl OSSetThreadPriority
/* 80060184 0005D0E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80060188 0005D0E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006018C 0005D0EC  7C 08 03 A6 */	mtlr r0
/* 80060190 0005D0F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80060194 0005D0F4  4E 80 00 20 */	blr 
