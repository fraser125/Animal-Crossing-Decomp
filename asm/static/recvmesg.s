.include "macros.inc"

.section .text

.org 0x8006011C

.global osRecvMesg
osRecvMesg:
/* 8006011C 0005D07C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80060120 0005D080  7C 08 02 A6 */	mflr r0
/* 80060124 0005D084  90 01 00 14 */	stw r0, 0x14(r1)
/* 80060128 0005D088  48 01 BC 21 */	bl OSReceiveMessage
/* 8006012C 0005D08C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80060130 0005D090  7C 08 03 A6 */	mtlr r0
/* 80060134 0005D094  38 21 00 10 */	addi r1, r1, 0x10
/* 80060138 0005D098  4E 80 00 20 */	blr 
