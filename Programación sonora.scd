s.boot

(
SynthDef(\mi_synth, {
    arg freq = 440, amp = 0.5;
    var sig;
    sig = SinOsc.ar(freq, 0, amp);
    Out.ar(0, sig);
}).add;
)

(
Pdef(\mi_pdef, Pbind(
    \instrument, \mi_synth,
    \dur, 0.5,  // Duración
    \amp, 0.7,  // Amplificación
    \freq, Pseq([440, 523.25, 659.25], inf)  // Frecuencia
)).play;
)
